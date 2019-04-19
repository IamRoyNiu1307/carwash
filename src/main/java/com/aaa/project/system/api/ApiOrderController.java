package com.aaa.project.system.api;


import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.order.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 * 订单接口
 */
@RestController
@RequestMapping("/api/order")
public class ApiOrderController {



    /**
     *
     * @param consumerAccount 顾客账号
     * @param serviceIdList 选择的业务id
     * @param startTime 预约起始日期
     * @param startHour 预约起始时间
     * @param endHour 预约结束时间
     * @param expectCostId 预算范围id
     * @param orderComment 订单备注
     * @param storeId 门店id
     */
    @RequestMapping("/createOrder")
    public AjaxResult createOrder(@RequestParam(name="consumerAccount",required = true) String consumerAccount,
                                  @RequestParam(name="serviceIdList",required = true)int serviceIdList,
                                  @RequestParam(name="startTime",required =true )String startTime,
                                  @RequestParam(name="startHour",required =true )String startHour,
                                  @RequestParam(name="endHour",required = true)String endHour,
                                  @RequestParam(name="expectCostId",required = true)int expectCostId,
                                  @RequestParam(name="orderComment",required = false)String orderComment,
                                  @RequestParam(name = "storeId",required = false) String storeId){
        AjaxResult ajaxResult = new AjaxResult();

        ajaxResult.success("创建订单成功");
        return ajaxResult;
    }
    @Autowired
    private IOrderService orderService;

    @RequestMapping("/cancelOrder")
    public AjaxResult cancelOrder(@RequestParam(name="orderId",required = true)String orderId){
        Date finishDate=new Date();
        orderService.cancelOrderByOrderId(orderId,finishDate);
        return AjaxResult.success();
    }

}
