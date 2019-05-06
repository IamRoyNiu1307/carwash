package com.aaa.project.system.containerBox.controller;

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
import com.aaa.project.system.containerBox.domain.ContainerBox;
import com.aaa.project.system.containerBox.service.IContainerBoxService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 货柜格子 信息操作处理
 * 
 * @author aaa
 * @date 2019-05-06
 */
@Controller
@RequestMapping("/system/containerBox")
public class ContainerBoxController extends BaseController
{
    private String prefix = "system/containerBox";
	
	@Autowired
	private IContainerBoxService containerBoxService;
	
	@RequiresPermissions("system:containerBox:view")
	@GetMapping()
	public String containerBox()
	{
	    return prefix + "/containerBox";
	}
	
	/**
	 * 查询货柜格子列表
	 */
	@RequiresPermissions("system:containerBox:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(ContainerBox containerBox)
	{
		startPage();
        List<ContainerBox> list = containerBoxService.selectContainerBoxList(containerBox);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出货柜格子列表
	 */
	@RequiresPermissions("system:containerBox:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ContainerBox containerBox)
    {
    	List<ContainerBox> list = containerBoxService.selectContainerBoxList(containerBox);
        ExcelUtil<ContainerBox> util = new ExcelUtil<ContainerBox>(ContainerBox.class);
        return util.exportExcel(list, "containerBox");
    }
	
	/**
	 * 新增货柜格子
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存货柜格子
	 */
	@RequiresPermissions("system:containerBox:add")
	@Log(title = "货柜格子", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(ContainerBox containerBox)
	{		
		return toAjax(containerBoxService.insertContainerBox(containerBox));
	}

	/**
	 * 修改货柜格子
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		ContainerBox containerBox = containerBoxService.selectContainerBoxById(id);
		mmap.put("containerBox", containerBox);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存货柜格子
	 */
	@RequiresPermissions("system:containerBox:edit")
	@Log(title = "货柜格子", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(ContainerBox containerBox)
	{		
		return toAjax(containerBoxService.updateContainerBox(containerBox));
	}
	
	/**
	 * 删除货柜格子
	 */
	@RequiresPermissions("system:containerBox:remove")
	@Log(title = "货柜格子", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(containerBoxService.deleteContainerBoxByIds(ids));
	}
	
}
