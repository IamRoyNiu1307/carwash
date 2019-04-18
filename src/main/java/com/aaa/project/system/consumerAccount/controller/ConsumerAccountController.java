package com.aaa.project.system.consumerAccount.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.project.system.consumerAccount.domain.ConsumerAccount;
import com.aaa.project.system.consumerAccount.service.IConsumerAccountService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 消费者账号 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Controller
@RequestMapping("/system/consumerAccount")
public class ConsumerAccountController extends BaseController
{
    private String prefix = "system/consumerAccount";
	
	@Autowired
	private IConsumerAccountService consumerAccountService;
	
	@RequiresPermissions("system:consumerAccount:view")
	@GetMapping()
	public String consumerAccount()
	{
	    return prefix + "/consumerAccount";
	}
	
	/**
	 * 查询消费者账号列表
	 */
	@RequiresPermissions("system:consumerAccount:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(ConsumerAccount consumerAccount)
	{
		startPage();
        List<ConsumerAccount> list = consumerAccountService.selectConsumerAccountList(consumerAccount);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出消费者账号列表
	 */
	@RequiresPermissions("system:consumerAccount:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ConsumerAccount consumerAccount)
    {
    	List<ConsumerAccount> list = consumerAccountService.selectConsumerAccountList(consumerAccount);
        ExcelUtil<ConsumerAccount> util = new ExcelUtil<ConsumerAccount>(ConsumerAccount.class);
        return util.exportExcel(list, "consumerAccount");
    }
	
	/**
	 * 新增消费者账号
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存消费者账号
	 */
	@RequiresPermissions("system:consumerAccount:add")
	@Log(title = "消费者账号", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(ConsumerAccount consumerAccount)
	{		
		return toAjax(consumerAccountService.insertConsumerAccount(consumerAccount));
	}

	/**
	 * 修改消费者账号
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		ConsumerAccount consumerAccount = consumerAccountService.selectConsumerAccountById(id);
		mmap.put("consumerAccount", consumerAccount);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存消费者账号
	 */
	@RequiresPermissions("system:consumerAccount:edit")
	@Log(title = "消费者账号", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(ConsumerAccount consumerAccount)
	{		
		return toAjax(consumerAccountService.updateConsumerAccount(consumerAccount));
	}
	
	/**
	 * 删除消费者账号
	 */
	@RequiresPermissions("system:consumerAccount:remove")
	@Log(title = "消费者账号", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(consumerAccountService.deleteConsumerAccountByIds(ids));
	}
	
}
