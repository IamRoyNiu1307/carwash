package com.aaa.project.system.carInfo.controller;

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
import com.aaa.project.system.carInfo.domain.CarInfo;
import com.aaa.project.system.carInfo.service.ICarInfoService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 车辆 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Controller
@RequestMapping("/system/carInfo")
public class CarInfoController extends BaseController
{
    private String prefix = "system/carInfo";
	
	@Autowired
	private ICarInfoService carInfoService;
	
	@RequiresPermissions("system:carInfo:view")
	@GetMapping()
	public String carInfo()
	{
	    return prefix + "/carInfo";
	}
	
	/**
	 * 查询车辆列表
	 */
	@RequiresPermissions("system:carInfo:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(CarInfo carInfo)
	{
		startPage();
        List<CarInfo> list = carInfoService.selectCarInfoList(carInfo);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出车辆列表
	 */
	@RequiresPermissions("system:carInfo:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(CarInfo carInfo)
    {
    	List<CarInfo> list = carInfoService.selectCarInfoList(carInfo);
        ExcelUtil<CarInfo> util = new ExcelUtil<CarInfo>(CarInfo.class);
        return util.exportExcel(list, "carInfo");
    }
	
	/**
	 * 新增车辆
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存车辆
	 */
	@RequiresPermissions("system:carInfo:add")
	@Log(title = "车辆", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(CarInfo carInfo)
	{		
		return toAjax(carInfoService.insertCarInfo(carInfo));
	}

	/**
	 * 修改车辆
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		CarInfo carInfo = carInfoService.selectCarInfoById(id);
		mmap.put("carInfo", carInfo);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存车辆
	 */
	@RequiresPermissions("system:carInfo:edit")
	@Log(title = "车辆", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(CarInfo carInfo)
	{		
		return toAjax(carInfoService.updateCarInfo(carInfo));
	}
	
	/**
	 * 删除车辆
	 */
	@RequiresPermissions("system:carInfo:remove")
	@Log(title = "车辆", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(carInfoService.deleteCarInfoByIds(ids));
	}
	
}
