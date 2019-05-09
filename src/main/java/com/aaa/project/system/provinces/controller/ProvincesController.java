package com.aaa.project.system.provinces.controller;

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
import com.aaa.project.system.provinces.domain.Provinces;
import com.aaa.project.system.provinces.service.IProvincesService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 省份 信息操作处理
 * 
 * @author aaa
 * @date 2019-05-09
 */
@Controller
@RequestMapping("/system/provinces")
public class ProvincesController extends BaseController
{
    private String prefix = "system/provinces";
	
	@Autowired
	private IProvincesService provincesService;
	
	@RequiresPermissions("system:provinces:view")
	@GetMapping()
	public String provinces()
	{
	    return prefix + "/provinces";
	}
	
	/**
	 * 查询省份列表
	 */
	@RequiresPermissions("system:provinces:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Provinces provinces)
	{
		startPage();
        List<Provinces> list = provincesService.selectProvincesList(provinces);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出省份列表
	 */
	@RequiresPermissions("system:provinces:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Provinces provinces)
    {
    	List<Provinces> list = provincesService.selectProvincesList(provinces);
        ExcelUtil<Provinces> util = new ExcelUtil<Provinces>(Provinces.class);
        return util.exportExcel(list, "provinces");
    }
	
	/**
	 * 新增省份
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存省份
	 */
	@RequiresPermissions("system:provinces:add")
	@Log(title = "省份", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Provinces provinces)
	{		
		return toAjax(provincesService.insertProvinces(provinces));
	}

	/**
	 * 修改省份
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Provinces provinces = provincesService.selectProvincesById(id);
		mmap.put("provinces", provinces);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存省份
	 */
	@RequiresPermissions("system:provinces:edit")
	@Log(title = "省份", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Provinces provinces)
	{		
		return toAjax(provincesService.updateProvinces(provinces));
	}
	
	/**
	 * 删除省份
	 */
	@RequiresPermissions("system:provinces:remove")
	@Log(title = "省份", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(provincesService.deleteProvincesByIds(ids));
	}
	
}
