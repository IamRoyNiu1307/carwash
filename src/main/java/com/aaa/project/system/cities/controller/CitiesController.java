package com.aaa.project.system.cities.controller;

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
import com.aaa.project.system.cities.domain.Cities;
import com.aaa.project.system.cities.service.ICitiesService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 城市 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Controller
@RequestMapping("/system/cities")
public class CitiesController extends BaseController
{
    private String prefix = "system/cities";
	
	@Autowired
	private ICitiesService citiesService;
	
	@RequiresPermissions("system:cities:view")
	@GetMapping()
	public String cities()
	{
	    return prefix + "/cities";
	}
	
	/**
	 * 查询城市列表
	 */
	@RequiresPermissions("system:cities:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Cities cities)
	{
		startPage();
        List<Cities> list = citiesService.selectCitiesList(cities);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出城市列表
	 */
	@RequiresPermissions("system:cities:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Cities cities)
    {
    	List<Cities> list = citiesService.selectCitiesList(cities);
        ExcelUtil<Cities> util = new ExcelUtil<Cities>(Cities.class);
        return util.exportExcel(list, "cities");
    }
	
	/**
	 * 新增城市
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存城市
	 */
	@RequiresPermissions("system:cities:add")
	@Log(title = "城市", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Cities cities)
	{		
		return toAjax(citiesService.insertCities(cities));
	}

	/**
	 * 修改城市
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Cities cities = citiesService.selectCitiesById(id);
		mmap.put("cities", cities);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存城市
	 */
	@RequiresPermissions("system:cities:edit")
	@Log(title = "城市", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Cities cities)
	{		
		return toAjax(citiesService.updateCities(cities));
	}
	
	/**
	 * 删除城市
	 */
	@RequiresPermissions("system:cities:remove")
	@Log(title = "城市", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(citiesService.deleteCitiesByIds(ids));
	}
	
}
