package com.aaa.project.system.api;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.XmlUtil;
import com.aaa.common.utils.PayUtil;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.keyInfo.service.IKeyInfoService;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.service.IOrderService;
import com.aaa.project.system.orderAmount.domain.OrderAmount;
import com.aaa.project.system.orderAmount.service.IOrderAmountService;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.jdom.JDOMException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.w3c.dom.Document;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Map;

import static com.aaa.project.myconst.MyConst.STATUS_ORDER_PAID;


/**
 * 微信支付接口
 */
@RestController
@RequestMapping("/api/wxpay")
public class ApiWxPay {

    @Autowired
    private IOrderService orderService;
    @Autowired
    private IKeyInfoService keyInfoService;
    @Autowired
    private IOrderAmountService orderAmountService;

    @RequestMapping("/pay")
    public JSONObject pay(@RequestParam("orderId")String orderId, @RequestParam(name = "openid") String openid,@RequestParam(name = "amount") Float amount,HttpServletRequest request){
        JSONObject jsonObject = PayUtil.wxPay(orderId,openid, request);
        return jsonObject;
    }

    @RequestMapping("/notice")
    public void notice(HttpServletRequest request, HttpServletResponse response) throws Exception {

        Map payResult = PayUtil.wxNotify(request, response);
//        if(payResult.get("notify_result")!=null&"SUCCESS".equals(payResult.get("notify_result"))){
//            String orderId = (String)payResult.get("out_trade_no");
//            Order order = orderService.selectOrderByOrderId(orderId);
//            order.setStatusId(STATUS_ORDER_PAID);
//            orderService.updateOrder(order);
//        }

    }


    /**
     * 完成支付
     * @param orderId 订单id
     * @param date 日期
     * @param uuid uuid
     * @param amount 订单金额
     * @return
     */
    @RequestMapping("/payComplete")
    public AjaxResult payComplete(@RequestParam(name = "orderId")String orderId,
                                  @RequestParam(name = "date") String date,
                                  @RequestParam(name = "uuid")String uuid,
                                  @RequestParam(name = "amount")Float amount){

        System.out.println(date);
        DateTime parse = DateUtil.parse(date, "yyyy-MM-dd HH:mm:ss");
        Order order = orderService.selectOrderByOrderId(orderId);
        order.setStatusId(STATUS_ORDER_PAID);
        order.setPayDate(parse.toJdkDate());
        orderService.updateOrder(order);
        //更改订单钥匙柜信息并发短信
        keyInfoService.updateKeyInfoByKeyInfo(null,uuid,order);
        //插入订单金额表
        OrderAmount orderAmount = new OrderAmount();
        orderAmount.setOrderId(orderId);
        orderAmount.setTotalAmount(amount);
        orderAmount.setFinalAmount(amount);
        orderAmountService.insertOrderAmount(orderAmount);
        return AjaxResult.success();
    }
}
