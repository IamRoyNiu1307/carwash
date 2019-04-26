package com.aaa.project.system.userLocation.controller;

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
import com.aaa.project.system.userLocation.domain.UserLocation;
import com.aaa.project.system.userLocation.service.IUserLocationService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 洗车员定位 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-26
 */
@Controller
@RequestMapping("/system/userLocation")
public class UserLocationController extends BaseController
{
    private String prefix = "system/userLocation";
	
	@Autowired
	private IUserLocationService userLocationService;
	
	@RequiresPermissions("system:userLocation:view")
	@GetMapping()
	public String userLocation()
	{
	    return prefix + "/userLocation";
	}
	
	/**
	 * 查询洗车员定位列表
	 */
	@RequiresPermissions("system:userLocation:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(UserLocation userLocation)
	{
		startPage();
        List<UserLocation> list = userLocationService.selectUserLocationList(userLocation);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出洗车员定位列表
	 */
	@RequiresPermissions("system:userLocation:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(UserLocation userLocation)
    {
    	List<UserLocation> list = userLocationService.selectUserLocationList(userLocation);
        ExcelUtil<UserLocation> util = new ExcelUtil<UserLocation>(UserLocation.class);
        return util.exportExcel(list, "userLocation");
    }
	
	/**
	 * 新增洗车员定位
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存洗车员定位
	 */
	@RequiresPermissions("system:userLocation:add")
	@Log(title = "洗车员定位", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(UserLocation userLocation)
	{		
		return toAjax(userLocationService.insertUserLocation(userLocation));
	}

	/**
	 * 修改洗车员定位
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		UserLocation userLocation = userLocationService.selectUserLocationById(id);
		mmap.put("userLocation", userLocation);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存洗车员定位
	 */
	@RequiresPermissions("system:userLocation:edit")
	@Log(title = "洗车员定位", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(UserLocation userLocation)
	{		
		return toAjax(userLocationService.updateUserLocation(userLocation));
	}
	
	/**
	 * 删除洗车员定位
	 */
	@RequiresPermissions("system:userLocation:remove")
	@Log(title = "洗车员定位", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(userLocationService.deleteUserLocationByIds(ids));
	}
	
}
