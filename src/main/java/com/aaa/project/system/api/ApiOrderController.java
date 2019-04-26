package com.aaa.project.system.api;


import cn.hutool.core.date.DateUtil;
import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.common.utils.IDUtil;
import com.aaa.common.utils.ReGeo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.carImage.domain.CarImage;
import com.aaa.project.system.carInfo.domain.CarInfo;
import com.aaa.project.system.carInfo.service.ICarInfoService;
import com.aaa.project.system.logImage.domain.LogImage;
import com.aaa.project.system.logImage.service.ILogImageService;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.service.IOrderService;
import com.aaa.project.system.orderAmount.domain.OrderAmount;
import com.aaa.project.system.orderAmount.service.IOrderAmountService;
import com.aaa.project.system.orderLog.domain.OrderLog;
import com.aaa.project.system.orderLog.service.IOrderLogService;
import com.aaa.project.system.orderService.domain.OrderService;
import com.aaa.project.system.orderService.service.IOrderServiceService;
import com.aaa.project.system.storeService.service.IStoreServiceService;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import static com.aaa.common.utils.file.FileUploadUtils.upload;
import static com.aaa.project.myconst.MyConst.*;

/**
 * 订单接口
 */
@RestController
@RequestMapping("/api/order")
public class ApiOrderController {
    @Autowired
    private IOrderService orderService;
    @Autowired
    private ICarInfoService carInfoService;
    @Autowired
    private IOrderServiceService orderServiceService;
    @Autowired
    private IStoreServiceService storeServiceService;
    @Autowired
    private IOrderAmountService orderAmountService;
    @Autowired
    private IOrderLogService orderLogService;
    @Autowired
    private ILogImageService logImageService;


    /**
     * @param consumerAccount 顾客账号
     * @param serviceIdList   选择的业务id
     * @param startTime       预约起始日期
     * @param startHour       预约起始时间
     * @param endHour         预约结束时间
     * @param expectCostId    预算范围id
     * @param orderComment    订单备注
     * @param storeId         门店id
     */
    @RequestMapping("/createOrder")
    public AjaxResult createOrder(@RequestParam(name = "consumerAccount", required = true) String consumerAccount,
                                  @RequestParam(name = "serviceIdList", required = true) String serviceIdList,
                                  @RequestParam(name = "startTime", required = true) String startTime,
                                  @RequestParam(name = "startHour", required = true) String startHour,
                                  @RequestParam(name = "endHour", required = true) String endHour,
                                  @RequestParam(name = "expectCostId", required = true) int expectCostId,
                                  @RequestParam(name = "orderComment", required = false) String orderComment,
                                  @RequestParam(name = "storeId", required = false) String storeId,
                                  @RequestParam(name = "carId", required = true) int carId) {
        AjaxResult ajaxResult = new AjaxResult();
        Order order = new Order();
        //获取车辆信息
        CarInfo carInfo = carInfoService.selectCarInfoById(carId);

        //订单编号
        String orderId = IDUtil.createID();
        order.setOrderId(orderId);
        //车辆编号
        order.setCarId(carInfo.getId());
        //车辆地址
        String address = (String) ReGeo.reGeo(carInfo.getCarAddrLng(), carInfo.getCarAddrLat()).get("formattedAddress");
        order.setCarAddress(address);
        //消费者账号
        order.setConsumerAccount(consumerAccount);
        //订单状态编号
        order.setStatusId(storeId == null ? STATUS_ORDER_CREATED : STATUS_ORDER_UNPAY);
        //车辆编号
        order.setCarId(carId);
        //门店编号
        order.setStoreId(storeId);
        //下单时间
        order.setCreateDate(new Date());
        //模式编号(下单类型：快速下单、指定门店下单)
        order.setTypeId(storeId == null ? MODEL_QUICKCREATE : MODEL_SELECTSTORE);
        //预约时间
        order.setAppointmentTime(DateUtil.parse(startTime + " " + TIME_MAP.get(startHour) + ":00", "yyyy-MM-dd HH:mm"));
        //时间段
        order.setTimeQuantum(TIME_MAP.get(endHour) - TIME_MAP.get(startHour));
        //预算范围
        order.setExpectCostId(expectCostId);
        //订单备注
        order.setOrderComment(orderComment);
        //订单服务
        String[] serviceList = serviceIdList.substring(1, serviceIdList.length() - 1).split(",");
        List<String> list = Arrays.asList(serviceList);
        orderServiceService.insertOrder(orderId, list);
        //将订单信息插入订单表中
        orderService.insertOrder(order);
        ajaxResult.put("code", 0);
        return ajaxResult;
    }

    /**
     * 门店接单 计算服务费用    应放在商家接单后
     *
     * @param orderId 订单编号
     * @return ajaxResult.success
     */
    @RequestMapping("/calc")
    public AjaxResult calc(@RequestParam(name = "orderId", required = true) String orderId) {
        //通过订单号查找订单中的服务
        List<OrderService> orderServices = orderServiceService.selectOrderService(orderId);
        //通过订单号在订单表中查找店铺id
        Order order = orderService.selectOrderByOrderId(orderId);
        String storeId = order.getStoreId();
        //循环遍历所选服务，计算订单金额
        float amount = 0;
        for (int i = 0; i < orderServices.size(); i++) {
            amount += storeServiceService.selectCost(storeId, orderServices.get(i).getServiceId());
        }
        //插入订单金额表
        OrderAmount orderAmount = new OrderAmount();
        orderAmount.setOrderId(orderId);
        orderAmount.setTotalAmount(amount);
        orderAmount.setFinalAmount(amount);
        orderAmountService.insertOrderAmount(orderAmount);
        return AjaxResult.success();
    }

    /**
     * 洗车员图片拍照上传
     *
     * @param file 上传的文件
     * @param orderId 订单id
     * @return AjaxResult.success
     */
    @RequestMapping("/uploadPicture")
    public AjaxResult uploadPicture(@RequestParam(name = "orderId", required = true) String orderId, @RequestParam(value = "file") MultipartFile file) throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException {

        OrderLog orderLog = new OrderLog();
        orderLog.setOrderId(orderId);
        //判断插入车辆照片状态内容
        int i = orderLogService.selectOrderCountByOrderId(orderId);
        if(i==0){
            orderLog.setContent("取车时车辆仪表盘");
        }else if(i==1){
            orderLog.setContent("洗车完毕车辆外观");
        }else {
            orderLog.setContent("还车完毕车辆仪表盘");
        }
        orderLog.setCreateDate(new Date());
        //插入日志并返回主键
        orderLogService.insertOrderLog(orderLog);

        LogImage logImage = new LogImage();
        logImage.setLogId(orderLog.getId());
        //得到文件路径
        String url = WASHCAR_IMAGE_DIR + upload(UPLOAD_WARHCAR_IMAGE, file, ".jpg");
        logImage.setImagePath(url);

        logImageService.insertLogImage(logImage);
        return AjaxResult.success();
    }

    /**
     * 根据订单ID修改订单状态取消订单
     *
     * @param orderId 订单ID
     * @return ajaxresult 成功信息
     */
    @RequestMapping("/cancelOrder")
    public AjaxResult cancelOrder(@RequestParam(name = "orderId", required = true) String orderId) {
        Date finishDate = new Date();
        float finalAmount = orderService.cancelOrderByOrderId(orderId, finishDate);
        AjaxResult ajaxResult = new AjaxResult();
        ajaxResult.put("payAmount", finalAmount);
        return ajaxResult;
    }

    /**
     * 根据账户和订单状态ID查询所有订单或者根据账户查询所有订单
     *
     * @param consumerAccount 用户账户
     * @param statusId        订单状态ID
     * @return 订单列表
     */
    @RequestMapping("/getOrderList")
    public AjaxResult getOrderList(@RequestParam(name = "account", required = true) String consumerAccount,
                                   @RequestParam(name = "statusId", required = false) Integer statusId) {
        AjaxResult ajaxResult = new AjaxResult();
        List<Order> orders = orderService.selectOrderListByConsumerAccountAndStatusId(consumerAccount, statusId);
        ajaxResult.put("orderList", orders);
        return ajaxResult;
    }

    /**
     * 查询order
     *
     * @param orderId order编号
     * @return order
     */
    @RequestMapping("/getOrder")
    public AjaxResult getOrder(@RequestParam(name = "orderId") String orderId) {
        AjaxResult ajaxResult = new AjaxResult();
        Order order = orderService.selectOrderByOrderId(orderId);
        ajaxResult.put("code", 0);
        ajaxResult.put("order", order);
        return ajaxResult;
    }
}
