package com.aaa.project.system.api;

import cn.hutool.core.util.XmlUtil;
import com.aaa.common.utils.PayUtil;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.jdom.JDOMException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.w3c.dom.Document;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;


/**
 * 微信支付接口
 */
@RestController
@RequestMapping("/api/wxpay")
public class ApiWxPay {

    @RequestMapping("/pay")
    public JSONObject pay(@RequestParam("orderId")String orderId, @RequestParam(name = "openid") String openid,HttpServletRequest request){
        System.out.println(orderId);
        JSONObject jsonObject = PayUtil.wxPay(orderId,openid, request);
        return jsonObject;
    }

    @RequestMapping("/notice")
    public void notice(HttpServletRequest request, HttpServletResponse response) throws Exception {

        Map payResult = PayUtil.wxNotify(request, response);


    }

}
