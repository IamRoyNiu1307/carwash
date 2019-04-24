package com.aaa.project.system.userAccount.controller;

import com.aaa.common.utils.poi.ExcelUtil;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.service.IUserAccountService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 用户 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-23
 */
@Controller
@RequestMapping("/system/userAccount")
public class UserAccountController extends BaseController
{
    private String prefix = "system/userAccount";
	
	@Autowired
	private IUserAccountService userAccountService;
	
	@RequiresPermissions("system:userAccount:view")
	@GetMapping()
	public String userAccount()
	{
	    return prefix + "/userAccount";
	}
	
	/**
	 * 查询用户列表
	 */
	@RequiresPermissions("system:userAccount:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(UserAccount userAccount)
	{
		startPage();
        List<UserAccount> list = userAccountService.selectUserAccountList(userAccount);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出用户列表
	 */
	@RequiresPermissions("system:userAccount:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(UserAccount userAccount)
    {
    	List<UserAccount> list = userAccountService.selectUserAccountList(userAccount);
        ExcelUtil<UserAccount> util = new ExcelUtil<UserAccount>(UserAccount.class);
        return util.exportExcel(list, "userAccount");
    }
	
	/**
	 * 新增用户
	 */
	@GetMapping("/add")
	public String add(HttpServletRequest req)
	{

		return prefix + "/add";
	}
	
	/**
	 * 新增保存用户
	 */
	@RequiresPermissions("system:userAccount:add")
	@Log(title = "用户", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(UserAccount userAccount)
	{		
		return toAjax(userAccountService.insertUserAccount(userAccount));
	}

	/**
	 * 修改用户
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		UserAccount userAccount = userAccountService.selectUserAccountById(id);
		mmap.put("userAccount", userAccount);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存用户
	 */
	@RequiresPermissions("system:userAccount:edit")
	@Log(title = "用户", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(UserAccount userAccount)
	{		
		return toAjax(userAccountService.updateUserAccount(userAccount));
	}
	
	/**
	 * 删除用户
	 */
	@RequiresPermissions("system:userAccount:remove")
	@Log(title = "用户", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(userAccountService.deleteUserAccountByIds(ids));
	}
	
}
