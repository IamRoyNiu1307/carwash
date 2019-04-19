package com.aaa.common.utils;

import com.aaa.framework.web.domain.AjaxResult;
import com.alibaba.fastjson.JSONObject;
import com.zhenzi.sms.ZhenziSmsClient;

import javax.servlet.http.HttpSession;
import java.util.Random;

import static com.aaa.project.myconst.MyConst.TYPE_ACCOUNT;
import static com.aaa.project.myconst.MyConst.TYPE_KEY;

public class SmsUtil {



    public static AjaxResult sendSms(HttpSession session, String phone){
        return sendSms(session,phone,TYPE_ACCOUNT);
    }

    public static AjaxResult sendSms(HttpSession session, String phone,int type){

        String msg = "";
        switch (type){
            case TYPE_ACCOUNT:
                msg = "该码有效期为5分钟，该码只能使用一次！";
                break;
            case TYPE_KEY:
                msg = "请凭取件码取件！";
                break;
        }

        try {
            JSONObject json = null;
            // 生成6位验证码
            String verifyCode = String.valueOf(new Random().nextInt(899999) + 100000);
            // 发送短信
            ZhenziSmsClient client = new ZhenziSmsClient("https://sms_developer.zhenzikj.com", "100701",
                    "e63cba85-be9b-40d0-bfa2-d70bbc13cb6f");
            String result = client.send(phone, "您的验证码为:" + verifyCode +"，"+ msg);
            json = JSONObject.parseObject(result);
            if (json.getIntValue("code") != 0)// 发送短信失败
                return AjaxResult.error("短信发送失败！");
            //将验证码存到session中,同时存入创建时间
            json = new JSONObject();
            json.put("code", verifyCode);
            json.put("createTime", System.currentTimeMillis());
            // 将认证码存入SESSION
            session.setAttribute("verifyCode", json);
            return AjaxResult.success("验证码已发送，请注意查收");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
