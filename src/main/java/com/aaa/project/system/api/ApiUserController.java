package com.aaa.project.system.api;

import com.aaa.common.utils.SmsUtil;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.service.IOrderService;
import com.aaa.project.system.orderService.domain.OrderService;
import com.aaa.project.system.user.domain.User;
import com.aaa.project.system.user.service.IUserService;
import com.aaa.framework.shiro.service.PasswordService;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.service.IUserAccountService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;

import static com.aaa.project.myconst.MyConst.*;

@RestController
@RequestMapping("/api/user")
public class ApiUserController {
    @Autowired
    private IUserService userService;
    @Autowired
    private PasswordService passwordService;
    @Autowired
    private IUserAccountService userAccountService;
    @Autowired
    private IOrderService orderService;

    /**
     * 登录接口
     *
     * @param account  账号
     * @param password 密码
     * @param openid   openid
     * @param code     验证码
     * @param session
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public AjaxResult login(@RequestParam(name = "account", required = true) String account,
                            @RequestParam(name = "password", required = false) String password,
                            @RequestParam(name = "openid", required = false) String openid,
                            @RequestParam(name = "code", required = false) String code,
                            HttpSession session) {
        System.out.println(account + "   " + password);
        AjaxResult ajaxResult = new AjaxResult();
        User user = new User();
        user.setLoginName(account);
        List<User> userList = userService.selectUserList(user);
        if (userList != null & userList.size() > 0) {
            User resultUser = userList.get(0);
            if (STATUS_ACCOUNT_ENABLE == userAccountService.selectUserAccountByUserId(resultUser.getUserId()).getStatusId()) {
                if (passwordService.encryptPassword(account, password, account).equals(resultUser.getPassword())) {
                    userAccountService.bindAccountWithOpenid(resultUser.getUserId(), openid);
                    ajaxResult.put("account", account);
                    ajaxResult.put("msg", "登录成功！");
                } else {
                    ajaxResult.put("code", 1).put("msg", "账号或密码错误！");
                }


                if (code != null &&
                        code.equals(String.valueOf(JSONObject.parseObject(session.getAttribute("verifyCode").toString()).get("code")))) {
                    userAccountService.bindAccountWithOpenid(resultUser.getUserId(), openid);
                    ajaxResult.put("account", account);
                    ajaxResult.put("msg", "登录成功！");
                } else {
                    ajaxResult.put("code", 1).put("msg", "验证码错误！");
                }
            } else {
                return ajaxResult.put("code", 1).put("msg", "账号未通过审核！");
            }

        } else {
            return ajaxResult.put("code", 1).put("msg", "账号不存在！");
        }

        return ajaxResult;
    }

    /**
     * 发送验证码
     *
     * @param account 账号
     * @param session
     * @return
     */
    @RequestMapping("/sendCode")
    public AjaxResult sendCode(@RequestParam(name = "account", required = true) String account,
                               HttpSession session) {
        return SmsUtil.sendSms(session, account, TYPE_ACCOUNT);

    }


    /**
     * 根据openid获得绑定的账号
     *
     * @param openid
     * @return
     */
    @RequestMapping("/bind")
    public AjaxResult bind(@RequestParam(name = "openid") String openid) {
        UserAccount userAccount = new UserAccount();
        userAccount.setOpenid(openid);
        List<UserAccount> userAccountList = userAccountService.selectUserAccountList(userAccount);
        AjaxResult ajaxResult = new AjaxResult();
        if (userAccountList != null && userAccountList.size() > 0) {
            ajaxResult.put("account", userService.selectUserById(userAccountList.get(0).getUserId()).getLoginName());
        }
        return ajaxResult;
    }

    /**
     *  洗车员返回订单
     * @param account 洗车员账号
     * @param type 订单类型：0、所有订单 1、已完成订单 2、未完成订单
     * @return
     */
    @RequestMapping("/getOrderList")
    public AjaxResult getOrderList(@RequestParam(name = "account", required = true) String account, int type) {
        AjaxResult ajaxResult = new AjaxResult();
        Order order = new Order();
        if (type == 0) {
            order.setUserAccount(account);
            List<Order> orderList = orderService.selectOrderList(order);
            ajaxResult.put("orderList", orderList);
        } else if (type == 1) {
            order.setUserAccount(account);
            order.setStatusId(STATUS_ORDER_FINISHED);
            List<Order> orderList = orderService.selectOrderList(order);
            ajaxResult.put("orderList", orderList);
        }else {
            order.setUserAccount(account);
            order.setStatusId(STATUS_ORDER_RUNNING);
            List<Order> orderList = orderService.selectOrderList(order);
            ajaxResult.put("orderList",orderList);
        }

        ajaxResult.put("code", 0);
        return ajaxResult;
    }
}
