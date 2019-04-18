package com.aaa.project.system.status.controller;

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
import com.aaa.project.system.status.domain.Status;
import com.aaa.project.system.status.service.IStatusService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 状态 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Controller
@RequestMapping("/system/status")
public class StatusController extends BaseController
{
    private String prefix = "system/status";
	
	@Autowired
	private IStatusService statusService;
	
	@RequiresPermissions("system:status:view")
	@GetMapping()
	public String status()
	{
	    return prefix + "/status";
	}
	
	/**
	 * 查询状态列表
	 */
	@RequiresPermissions("system:status:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Status status)
	{
		startPage();
        List<Status> list = statusService.selectStatusList(status);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出状态列表
	 */
	@RequiresPermissions("system:status:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Status status)
    {
    	List<Status> list = statusService.selectStatusList(status);
        ExcelUtil<Status> util = new ExcelUtil<Status>(Status.class);
        return util.exportExcel(list, "status");
    }
	
	/**
	 * 新增状态
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存状态
	 */
	@RequiresPermissions("system:status:add")
	@Log(title = "状态", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Status status)
	{		
		return toAjax(statusService.insertStatus(status));
	}

	/**
	 * 修改状态
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Status status = statusService.selectStatusById(id);
		mmap.put("status", status);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存状态
	 */
	@RequiresPermissions("system:status:edit")
	@Log(title = "状态", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Status status)
	{		
		return toAjax(statusService.updateStatus(status));
	}
	
	/**
	 * 删除状态
	 */
	@RequiresPermissions("system:status:remove")
	@Log(title = "状态", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(statusService.deleteStatusByIds(ids));
	}
	
}
