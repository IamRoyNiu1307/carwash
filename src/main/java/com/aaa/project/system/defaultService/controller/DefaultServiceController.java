package com.aaa.project.system.defaultService.controller;

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
import com.aaa.project.system.defaultService.domain.DefaultService;
import com.aaa.project.system.defaultService.service.IDefaultServiceService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 默认业务 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Controller
@RequestMapping("/system/defaultService")
public class DefaultServiceController extends BaseController
{
    private String prefix = "system/defaultService";
	
	@Autowired
	private IDefaultServiceService defaultServiceService;
	
	@RequiresPermissions("system:defaultService:view")
	@GetMapping()
	public String defaultService()
	{
	    return prefix + "/defaultService";
	}
	
	/**
	 * 查询默认业务列表
	 */
	@RequiresPermissions("system:defaultService:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(DefaultService defaultService)
	{
		startPage();
        List<DefaultService> list = defaultServiceService.selectDefaultServiceList(defaultService);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出默认业务列表
	 */
	@RequiresPermissions("system:defaultService:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(DefaultService defaultService)
    {
    	List<DefaultService> list = defaultServiceService.selectDefaultServiceList(defaultService);
        ExcelUtil<DefaultService> util = new ExcelUtil<DefaultService>(DefaultService.class);
        return util.exportExcel(list, "defaultService");
    }
	
	/**
	 * 新增默认业务
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存默认业务
	 */
	@RequiresPermissions("system:defaultService:add")
	@Log(title = "默认业务", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(DefaultService defaultService)
	{		
		return toAjax(defaultServiceService.insertDefaultService(defaultService));
	}

	/**
	 * 修改默认业务
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		DefaultService defaultService = defaultServiceService.selectDefaultServiceById(id);
		mmap.put("defaultService", defaultService);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存默认业务
	 */
	@RequiresPermissions("system:defaultService:edit")
	@Log(title = "默认业务", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(DefaultService defaultService)
	{		
		return toAjax(defaultServiceService.updateDefaultService(defaultService));
	}
	
	/**
	 * 删除默认业务
	 */
	@RequiresPermissions("system:defaultService:remove")
	@Log(title = "默认业务", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(defaultServiceService.deleteDefaultServiceByIds(ids));
	}
	
}
