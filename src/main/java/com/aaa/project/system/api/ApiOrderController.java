package com.aaa.project.system.api;


import com.aaa.framework.web.domain.AjaxResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 订单接口
 */
@RestController
@RequestMapping("/api/order")
public class ApiOrderController {

    @RequestMapping("/cancelOrder")
    public AjaxResult cancelOrder(){
        return null;
    }

}
