package com.aaa.project.system.model.controller;

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
import com.aaa.project.system.model.domain.Model;
import com.aaa.project.system.model.service.IModelService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 模式 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-22
 */
@Controller
@RequestMapping("/system/model")
public class ModelController extends BaseController
{
    private String prefix = "system/model";
	
	@Autowired
	private IModelService modelService;
	
	@RequiresPermissions("system:model:view")
	@GetMapping()
	public String model()
	{
	    return prefix + "/model";
	}
	
	/**
	 * 查询模式列表
	 */
	@RequiresPermissions("system:model:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Model model)
	{
		startPage();
        List<Model> list = modelService.selectModelList(model);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出模式列表
	 */
	@RequiresPermissions("system:model:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Model model)
    {
    	List<Model> list = modelService.selectModelList(model);
        ExcelUtil<Model> util = new ExcelUtil<Model>(Model.class);
        return util.exportExcel(list, "model");
    }
	
	/**
	 * 新增模式
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存模式
	 */
	@RequiresPermissions("system:model:add")
	@Log(title = "模式", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Model model)
	{		
		return toAjax(modelService.insertModel(model));
	}

	/**
	 * 修改模式
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Model model = modelService.selectModelById(id);
		mmap.put("model", model);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存模式
	 */
	@RequiresPermissions("system:model:edit")
	@Log(title = "模式", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Model model)
	{		
		return toAjax(modelService.updateModel(model));
	}
	
	/**
	 * 删除模式
	 */
	@RequiresPermissions("system:model:remove")
	@Log(title = "模式", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(modelService.deleteModelByIds(ids));
	}
	
}
