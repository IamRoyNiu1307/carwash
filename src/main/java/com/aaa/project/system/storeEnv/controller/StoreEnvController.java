package com.aaa.project.system.storeEnv.controller;

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
import com.aaa.project.system.storeEnv.domain.StoreEnv;
import com.aaa.project.system.storeEnv.service.IStoreEnvService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 门店环境 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Controller
@RequestMapping("/system/storeEnv")
public class StoreEnvController extends BaseController
{
    private String prefix = "system/storeEnv";
	
	@Autowired
	private IStoreEnvService storeEnvService;
	
	@RequiresPermissions("system:storeEnv:view")
	@GetMapping()
	public String storeEnv()
	{
	    return prefix + "/storeEnv";
	}
	
	/**
	 * 查询门店环境列表
	 */
	@RequiresPermissions("system:storeEnv:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(StoreEnv storeEnv)
	{
		startPage();
        List<StoreEnv> list = storeEnvService.selectStoreEnvList(storeEnv);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出门店环境列表
	 */
	@RequiresPermissions("system:storeEnv:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(StoreEnv storeEnv)
    {
    	List<StoreEnv> list = storeEnvService.selectStoreEnvList(storeEnv);
        ExcelUtil<StoreEnv> util = new ExcelUtil<StoreEnv>(StoreEnv.class);
        return util.exportExcel(list, "storeEnv");
    }
	
	/**
	 * 新增门店环境
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存门店环境
	 */
	@RequiresPermissions("system:storeEnv:add")
	@Log(title = "门店环境", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(StoreEnv storeEnv)
	{		
		return toAjax(storeEnvService.insertStoreEnv(storeEnv));
	}

	/**
	 * 修改门店环境
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		StoreEnv storeEnv = storeEnvService.selectStoreEnvById(id);
		mmap.put("storeEnv", storeEnv);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存门店环境
	 */
	@RequiresPermissions("system:storeEnv:edit")
	@Log(title = "门店环境", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(StoreEnv storeEnv)
	{		
		return toAjax(storeEnvService.updateStoreEnv(storeEnv));
	}
	
	/**
	 * 删除门店环境
	 */
	@RequiresPermissions("system:storeEnv:remove")
	@Log(title = "门店环境", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(storeEnvService.deleteStoreEnvByIds(ids));
	}
	
}
