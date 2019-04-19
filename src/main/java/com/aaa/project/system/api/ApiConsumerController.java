package com.aaa.project.system.api;

import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.consumerAccount.domain.ConsumerAccount;
import com.aaa.project.system.consumerAccount.service.IConsumerAccountService;
import com.alibaba.fastjson.JSONObject;
import com.zhenzi.sms.ZhenziSmsClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Random;

/**
 * 顾客接口
 */

@RestController
@RequestMapping("/api/consumer")
public class ApiConsumerController {

    @Autowired
    private IConsumerAccountService consumerAccountService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public AjaxResult login(@RequestParam(name = "account", required = true) String account,
                            @RequestParam(name = "password", required = false) String password,
                            @RequestParam(name = "code", required = false) String code) {
        AjaxResult ajaxResult = new AjaxResult();
        if (password != null){
            ConsumerAccount consumer =  consumerAccountService.selectConsumerAccountByAccount(account);
            if(consumer == null){
                return ajaxResult.error("该用户不存在！");
            }
            if (password.equals(consumer.getConsumerPassword())){
                return ajaxResult.success();
            }
        } else if (code != null){
            ConsumerAccount consumer =  consumerAccountService.selectConsumerAccountByAccount(account);
            if(consumer == null){
                return ajaxResult.error("该用户不存在！");
            }
        }
        return ajaxResult;
    }

    @RequestMapping("/register")
    public AjaxResult register(@RequestParam(name = "account", required = true) String account, HttpServletRequest request) {
        AjaxResult ajaxResult = new AjaxResult();
        if (account != null){
            JSONObject json = null;
            // 生成6位验证码
            String verifyCode = String.valueOf(new Random().nextInt(899999) + 100000);
            // 发送短信
            ZhenziSmsClient client = new ZhenziSmsClient("https://sms_developer.zhenzikj.com", "100701",
                    "e63cba85-be9b-40d0-bfa2-d70bbc13cb6f");
            String result = null;
            try {
                result = client.send(account, "您的验证码为:" + verifyCode + "，该码有效期为5分钟，该码只能使用一次！");
            } catch (Exception e) {
                e.printStackTrace();
            }
            json = JSONObject.parseObject(result);
            if (json.getIntValue("code") != 0)// 发送短信失败
                return ajaxResult.error(1, "验证码发送失败");
            // 将验证码存到session中,同时存入创建时间
            // 以json存放，这里使用的是阿里的fastjson
            //HttpSession session = request.getSession();
            json = new JSONObject();
            json.put("verifyCode", verifyCode);
            json.put("createTime", System.currentTimeMillis());
            // 将认证码存入SESSION
            request.getSession().setAttribute("verifyCode", json);
            return ajaxResult.success("验证码已发送，请注意查收");
        }
        return ajaxResult;
    }
}
