package com.aaa.project.system.api;

import com.aaa.common.utils.PayUtil;
import com.alibaba.fastjson.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;


/**
 * 微信支付接口
 */
@RestController
@RequestMapping("/api")
public class ApiWxPay {

    @RequestMapping("/pay")
    public JSONObject pay(String openid,HttpServletRequest request){
        JSONObject jsonObject = PayUtil.wxPay(openid, request);
        return jsonObject;
    }


}
