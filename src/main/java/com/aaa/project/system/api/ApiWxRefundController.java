package com.aaa.project.system.api;

import com.aaa.common.utils.RefundUtil;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.service.IOrderService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

import static com.aaa.project.myconst.MyConst.STATUS_ORDER_CANCELED;

@RestController
@RequestMapping("/api/wxrefund")
public class ApiWxRefundController {

    @Autowired
    private IOrderService orderService;

    @RequestMapping("/refund")
    public AjaxResult refund(HttpServletRequest request){
        JSONObject refund = RefundUtil.refund(request);
        if("success".equals(refund.getString("returnCode"))){
            AjaxResult ajaxResult = new AjaxResult();
            String orderId = request.getParameter("orderId");
            Order order = orderService.selectOrderByOrderId(orderId);
            order.setStatusId(STATUS_ORDER_CANCELED);
            order.setUserAccount(null);
            orderService.updateOrder(order);
            ajaxResult.put("code",0);
            return ajaxResult;
        }
        return AjaxResult.error();
    }


}
