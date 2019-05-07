package com.aaa.project.system.userAccount.controller;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.common.utils.poi.ExcelUtil;
import com.aaa.common.utils.security.ShiroUtils;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.project.system.role.service.IRoleService;
import com.aaa.project.system.store.domain.Store;
import com.aaa.project.system.store.service.IStoreService;
import com.aaa.project.system.user.domain.User;
import com.aaa.project.system.user.service.IUserService;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.service.IUserAccountService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.aaa.project.myconst.MyConst.Role_MANAGER;
import static com.aaa.project.myconst.MyConst.Role_MERCHANT;


/**
 * 用户 信息操作处理
 *
 * @author aaa
 * @date 2019-04-23
 */
@Controller
@RequestMapping("/system/userAccount")
public class UserAccountController extends BaseController {
    private String prefix = "system/userAccount";

    @Autowired
    private IUserAccountService userAccountService;
    @Autowired
    private IUserService userService;
    @Autowired
    private IRoleService roleService;
    @Autowired
    private IStoreService storeService;

    @RequiresPermissions("system:userAccount:view")
    @GetMapping()
    public String userAccount() {
        return prefix + "/userAccount";
    }

    /**
     * 查询用户列表
     */
    @RequiresPermissions("system:userAccount:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(UserAccount userAccount) {
        //通过shiro查询登录的userId
        Long userId = ShiroUtils.getUserId();
        //通过userId找登录角色职位（商家、店长、admin）
        Long RoleId = userService.selectRoleIdByUserId(userId);
        //当登录角色是商家时 查看该商家所有门店的userAccount
        if (RoleId == Role_MERCHANT) {
            User user = userService.selectUserById(userId);
            Store store = new Store();
            store.setOwnerAccount(user.getLoginName());
            //查询商家所有门店
            List<Store> storeList = storeService.selectStoreList(store);
            List<String> storeIdList = new ArrayList<>();
            for(int i =0;i<storeList.size();i++){
                storeIdList.add(storeList.get(i).getStoreId());
            }
            startPage();
            List<UserAccount> list = userAccountService.selectUserAccountByStoreId(storeIdList);
            return getDataTable(list);
        } else if (RoleId == Role_MANAGER) {//当登录角色是店长时 查看该店下的所有userAccount
            UserAccount account = userAccountService.selectUserAccountByUserId(userId);
            userAccount.setStoreId(account.getStoreId());
            startPage();
            List<UserAccount> list = userAccountService.selectUserAccountList(userAccount);
            return getDataTable(list);
        } else {
            //当登录为admin时 查看所有userAccount
            startPage();
            List<UserAccount> list = userAccountService.selectUserAccountList(userAccount);
            return getDataTable(list);
        }
    }


    /**
     * 导出用户列表
     */
    @RequiresPermissions("system:userAccount:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(UserAccount userAccount) {
        List<UserAccount> list = userAccountService.selectUserAccountList(userAccount);
        ExcelUtil<UserAccount> util = new ExcelUtil<UserAccount>(UserAccount.class);
        return util.exportExcel(list, "userAccount");
    }

    /**
     * 新增用户
     */
    @GetMapping("/add")
    public String add(ModelMap mmap) {
        User sysUser = ShiroUtils.getSysUser();
        Store store = new Store();
        store.setOwnerAccount(sysUser.getLoginName());
        mmap.put("stores", storeService.selectStoreList(store));
        mmap.put("roles", roleService.selectAllRole());
        return prefix + "/add";
    }

    /**
     * 新增保存用户
     */
    @RequiresPermissions("system:userAccount:add")
    @Log(title = "用户", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestParam(name = "userName") String userName,
                              @RequestParam(name = "loginName") String loginName,
                              @RequestParam(name = "password") String password,
                              @RequestParam(name = "phonenumber") String phonenumber,
                              @RequestParam(name = "sex") String sex,
                              @RequestParam(name = "status") String status,
                              @RequestParam(name = "drivingLicence1") MultipartFile drivingLicence1,
                              @RequestParam(name = "drivingLicence2") MultipartFile drivingLicence2,
                              @RequestParam(name = "roleIds") Long[] roleIds,
                              @RequestParam(name = "storeId") String stordId) throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException {
        User user = new User();
        user.setUserName(userName);
        user.setLoginName(loginName);
        user.setPassword(password);
        user.setPhonenumber(phonenumber);
        user.setSex(sex);
        user.setStatus(status);
        user.setRoleIds(roleIds);
        //向sysUser中添加信息
        userService.insertUser(user);
        //添加成功后，根据userId向userAccount中添加信息
        UserAccount userAccount = new UserAccount();
        userAccount.setUserId(user.getUserId());
        userAccount.setStoreId(stordId);
        return toAjax(userAccountService.insertUserAccount(userAccount, drivingLicence1, drivingLicence2));
    }

	/**
	 * 修改用户
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		//根据id查找userAccount
		UserAccount userAccount = userAccountService.selectUserAccountById(id);
		//找出创建用户
		User sysUser = ShiroUtils.getSysUser();
		//找出需要修改的用户
		User user = userService.selectUserById(userAccount.getUserId());
		//获取该用户下的所有店铺
		Store store = new Store();
		store.setOwnerAccount(sysUser.getPhonenumber());
		//通过用户ID查询角色ID
		Long roleId = userService.selectRoleIdByUserId(userAccount.getUserId());
		//通过角色ID查询角色名称
		String roleName = roleService.selectRoleNameByRoleId(roleId);
		mmap.put("user",user);
		mmap.put("stores",storeService.selectStoreList(store));
		mmap.put("userAccount", userAccount);
		mmap.put("rolename",roleName);
		mmap.put("roles",roleService.selectAllRole());
	    return prefix + "/edit";
	}

	/**
	 * 修改保存用户
	 */
	@RequiresPermissions("system:userAccount:edit")
	@Log(title = "用户", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(@RequestParam(name = "id") Integer id,
							   @RequestParam(name = "loginName") String loginName,
							   @RequestParam(name = "password") String password,
							   @RequestParam(name = "phonenumber") String phonenumber,
							   @RequestParam(name = "status") String status,
							   @RequestParam(name = "roleIds") Long[] roleIds,
							   @RequestParam(name = "storeId")String stordId)throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException
	{
		//根据id更新userAccount表的信息
		UserAccount userAccount = new UserAccount();
		userAccount.setId(id);
		userAccount.setStoreId(stordId);
		userAccountService.updateUserAccount(userAccount);
		//更新sysUser表的信息
		UserAccount userAccount1 = userAccountService.selectUserAccountById(id);
		User user = new User();
		user.setUserId(userAccount1.getUserId());
		user.setLoginName(loginName);
		user.setPassword(password);
		user.setPhonenumber(phonenumber);
		user.setStatus(status);
		user.setRoleIds(roleIds);

        userService.updateUserInfo(user);

        return AjaxResult.success();
    }

    /**
     * 删除用户
     */
    @RequiresPermissions("system:userAccount:remove")
    @Log(title = "用户", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(userAccountService.deleteUserAccountByIds(ids));
    }

    /**
     * 校验用户名
     */
    @PostMapping("/checkLoginNameUnique")
    @ResponseBody
    public String checkLoginNameUnique(User user) {
        return userService.checkLoginNameUnique(user.getLoginName());
    }

    /**
     * 校验手机号码
     */
    @PostMapping("/checkPhoneUnique")
    @ResponseBody
    public String checkPhoneUnique(User user) {
        return userService.checkPhoneUnique(user);
    }
}
