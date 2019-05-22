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

import java.util.Date;
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

    /**
     * 显示待审核用户列表
     * @return
     */
    @RequiresPermissions("system:checkUser:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list() {
        System.out.println("--------------------start query--------------------");
        Date start = new Date();
        startPage();
        List<CheckUser> list = checkUserService.selectCheckUserList();
        long l = new Date().getTime() - start.getTime();
        System.out.println("--------------------end query--------------------");
        System.out.println("--------------------use:"+l+"--------------------");
        return getDataTable(list);
    }

    /**
     * 查看详细信息
     * @param userId
     * @param mmap
     * @return
     */
    @RequiresPermissions("system:checkUser:detail")
    @GetMapping("/detail/{userId}")
    public String detail(@PathVariable("userId") String userId, ModelMap mmap)
    {
        CheckUser checkUser = checkUserService.selectByUserId(Long.parseLong(userId));
        mmap.put("user", checkUser);
        return prefix + "/detail";
    }

    /**
     * 接受用户--审核通过
     * @param userId
     * @return
     */
    @RequiresPermissions("system:checkUser:acceptUser")
    @PostMapping("/acceptUser")
    @ResponseBody
    public AjaxResult acceptUser(@RequestParam("userId") Integer userId){
        UserAccount user = userAccountService.selectUserAccountByUserId(Long.parseLong(userId.toString()));
        //审核通过
        //用户账号设为使用中
        user.setStatusId(501);
        return toAjax(userAccountService.updateUserAccount(user));
    }

    /**
     * 拒绝用户--审核不通过
     * @param userId
     * @return
     */
    @RequiresPermissions("system:checkUser:refuseUser")
    @PostMapping("/refuseUser")
    @ResponseBody
    public AjaxResult refuseUser(@RequestParam("userId") Long userId){
        User user = userService.selectUserById(userId);
        UserAccount userAccount = userAccountService.selectUserAccountByUserId(userId);
        //用户状态设为1，未通过
        user.setStatus("1");
        //用户账号状态设为异常
        userAccount.setStatusId(509);
        userService.updateUserInfo(user);
        return toAjax(userAccountService.updateUserAccount(userAccount));
    }
}
