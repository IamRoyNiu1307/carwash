package com.aaa.project.system.checkUser.controller;

import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.project.system.checkUser.domain.CheckUser;
import com.aaa.project.system.checkUser.service.ICheckUserService;
import com.aaa.project.system.user.domain.User;
import com.aaa.project.system.user.service.IUserService;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.service.IUserAccountService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/system/checkUser")
public class CheckUserController extends BaseController {

    @Autowired
    private ICheckUserService checkUserService;
    @Autowired
    private IUserAccountService userAccountService;
    @Autowired
    private IUserService userService;

    private String prefix = "system/checkUser";

    @RequiresPermissions("system:checkUser:view")
    @GetMapping()
    public String checkUser() {
        return prefix + "/checkUser";
    }

    @RequiresPermissions("system:checkUser:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list() {
        startPage();
        List<CheckUser> list = checkUserService.selectCheckUserList();
        return getDataTable(list);
    }

    @RequiresPermissions("system:checkUser:detail")
    @GetMapping("/detail/{userId}")
    public String detail(@PathVariable("userId") String userId, ModelMap mmap)
    {
        CheckUser checkUser = checkUserService.selectByUserId(Long.parseLong(userId));
        mmap.put("user", checkUser);
        return prefix + "/detail";
    }

    @RequiresPermissions("system:checkUser:acceptUser")
    @PostMapping("/acceptUser")
    @ResponseBody
    public AjaxResult acceptUser(@RequestParam("userId") Integer userId){
        UserAccount user = userAccountService.selectUserAccountByUserId(Long.parseLong(userId.toString()));
        user.setStatusId(501);
        return toAjax(userAccountService.updateUserAccount(user));
    }

    @RequiresPermissions("system:checkUser:refuseUser")
    @PostMapping("/refuseUser")
    @ResponseBody
    public AjaxResult refuseUser(@RequestParam("userId") Long userId){
        User user = userService.selectUserById(userId);
        System.out.println(user);
        UserAccount userAccount = userAccountService.selectUserAccountByUserId(userId);
        user.setStatus("1");
        userAccount.setStatusId(509);
        userService.updateUserInfo(user);
        return toAjax(userAccountService.updateUserAccount(userAccount));
    }
}
