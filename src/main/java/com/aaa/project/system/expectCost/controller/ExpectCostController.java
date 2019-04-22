package com.aaa.project.system.expectCost.controller;

import com.aaa.common.utils.poi.ExcelUtil;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.project.system.expectCost.domain.ExpectCost;
import com.aaa.project.system.expectCost.service.IExpectCostService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 预算 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-22
 */
@Controller
@RequestMapping("/system/expectCost")
public class ExpectCostController extends BaseController
{
    private String prefix = "system/expectCost";
	
	@Autowired
	private IExpectCostService expectCostService;
	
	@RequiresPermissions("system:expectCost:view")
	@GetMapping()
	public String expectCost()
	{
	    return prefix + "/expectCost";
	}
	
	/**
	 * 查询预算列表
	 */
	@RequiresPermissions("system:expectCost:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(ExpectCost expectCost)
	{
		startPage();
        List<ExpectCost> list = expectCostService.selectExpectCostList(expectCost);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出预算列表
	 */
	@RequiresPermissions("system:expectCost:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ExpectCost expectCost)
    {
    	List<ExpectCost> list = expectCostService.selectExpectCostList(expectCost);
        ExcelUtil<ExpectCost> util = new ExcelUtil<ExpectCost>(ExpectCost.class);
        return util.exportExcel(list, "expectCost");
    }
	
	/**
	 * 新增预算
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存预算
	 */
	@RequiresPermissions("system:expectCost:add")
	@Log(title = "预算", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(ExpectCost expectCost)
	{		
		return toAjax(expectCostService.insertExpectCost(expectCost));
	}

	/**
	 * 修改预算
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		ExpectCost expectCost = expectCostService.selectExpectCostById(id);
		mmap.put("expectCost", expectCost);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存预算
	 */
	@RequiresPermissions("system:expectCost:edit")
	@Log(title = "预算", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(ExpectCost expectCost)
	{		
		return toAjax(expectCostService.updateExpectCost(expectCost));
	}
	
	/**
	 * 删除预算
	 */
	@RequiresPermissions("system:expectCost:remove")
	@Log(title = "预算", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(expectCostService.deleteExpectCostByIds(ids));
	}
	
}
