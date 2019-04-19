package com.aaa.project.system.api;

import com.aaa.common.utils.SmsUtil;
import com.aaa.framework.shiro.service.PasswordService;
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
import javax.servlet.http.HttpSession;
import java.util.Random;

import static com.aaa.project.myconst.MyConst.TODO_LOGIN;
import static com.aaa.project.myconst.MyConst.TODO_REGISTER;
import static com.aaa.project.myconst.MyConst.TYPE_ACCOUNT;

/**
 * 顾客接口
 */

@RestController
@RequestMapping("/api/consumer")
public class ApiConsumerController {

    @Autowired
    private IConsumerAccountService consumerAccountService;
    @Autowired
    private PasswordService passwordService;

    /**
     * 登录接口
     * @param account 账号
     * @param password 密码
     * @param openid openid
     * @param code 验证码
     * @param session
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public AjaxResult login(@RequestParam(name = "account", required = true) String account,
                            @RequestParam(name = "password", required = false) String password,
                            @RequestParam(name = "openid", required = false) String openid,
                            @RequestParam(name = "code", required = false) String code,
                            HttpSession session) {
        System.out.println(account+"   "+password);
        AjaxResult ajaxResult = new AjaxResult();
        ConsumerAccount consumer =  consumerAccountService.selectConsumerAccountByAccount(account);
        if(consumer!=null){
            if (password != null ){
                if(passwordService.encryptPassword(account, password, account).equals(consumer.getConsumerPassword())){
                    consumerAccountService.bindAccountWithOpenid(account,openid);
                    ajaxResult.put("account",account);
                    ajaxResult.put("msg","登录成功！");
                }else{
                    ajaxResult.put("code",1).put("msg","账号或密码错误！");
                }

            }
            if (code != null &&
                    code.equals(String.valueOf(JSONObject.parseObject(session.getAttribute("verifyCode").toString()).get("code")))){
                consumerAccountService.bindAccountWithOpenid(account,openid);
                ajaxResult.put("account",account);
                ajaxResult.put("msg","登录成功！");
            }else {
                ajaxResult.put("code",1).put("msg","验证码错误！");
            }
        }else{
            return ajaxResult.put("code",1).put("msg","账号不存在！");
        }

        return ajaxResult;
    }

    /**
     * 发送验证码
     * @param account 账号
     * @param todo 操作
     *             register：注册
     *             login   ：登录
     * @param session
     * @return
     */
    @RequestMapping("/sendCode")
    public AjaxResult sendCode(@RequestParam(name = "account", required = true) String account,
                               @RequestParam(name = "todo",required = true) String todo,
                               HttpSession session) {
        if(todo.equals(TODO_REGISTER)) {
            ConsumerAccount consumerAccount = consumerAccountService.selectConsumerAccountByAccount(account);
            if (consumerAccount != null) {
                return AjaxResult.error("该手机号已经注册！");
            } else {
                return SmsUtil.sendSms(session, account, TYPE_ACCOUNT);
            }
        }else if(todo.equals(TODO_LOGIN)){
            return SmsUtil.sendSms(session, account, TYPE_ACCOUNT);
        }
        return null;
    }

    /**
     * 注册接口
     * @param account 账号
     * @param openid openid
     * @param code 验证码
     * @param session
     * @return
     */
    @RequestMapping("/register")
    public AjaxResult register(@RequestParam(name = "account", required = true) String account,
                               @RequestParam(name = "openid", required = true) String openid,
                               @RequestParam(name = "code", required = true) String code,
                               HttpSession session){
        JSONObject verifyCode = JSONObject.parseObject(session.getAttribute("verifyCode").toString());
        if(code.equals(verifyCode.get("code"))){
            ConsumerAccount consumerAccount = new ConsumerAccount();
            consumerAccount.setConsumerAccount(account);
            consumerAccount.setOpenid(openid);
            consumerAccountService.insertConsumerAccount(consumerAccount);
            return AjaxResult.success("注册成功！");
        }else{
            return AjaxResult.error("验证码错误！");
        }
    }


    /**
     * 根据openid获得绑定的账号
     * @param openid
     * @return
     */
    @RequestMapping("/bind")
    public AjaxResult bind(@RequestParam(name = "openid")String openid){
        ConsumerAccount consumerAccount = consumerAccountService.selectAccountByOpenid(openid);
        AjaxResult ajaxResult = new AjaxResult();
        if(consumerAccount!=null) {
            ajaxResult.put("account", consumerAccount.getConsumerAccount());
        }
        return ajaxResult;
    }
}
