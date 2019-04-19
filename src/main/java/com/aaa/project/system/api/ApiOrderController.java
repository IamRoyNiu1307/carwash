package com.aaa.project.system.api;


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
    @Autowired
    private IOrderService orderService;

    @RequestMapping("/cancelOrder")
    public AjaxResult cancelOrder(@RequestParam(name="orderId",required = true)String orderId){
        Date finishDate=new Date();
        orderService.cancelOrderByOrderId(orderId,finishDate);
        return AjaxResult.success();
    }

}
