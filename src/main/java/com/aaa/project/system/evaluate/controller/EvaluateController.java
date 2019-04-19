package com.aaa.project.system.evaluate.controller;

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
import com.aaa.project.system.evaluate.domain.Evaluate;
import com.aaa.project.system.evaluate.service.IEvaluateService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 评价 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Controller
@RequestMapping("/system/evaluate")
public class EvaluateController extends BaseController
{
    private String prefix = "system/evaluate";
	
	@Autowired
	private IEvaluateService evaluateService;
	
	@RequiresPermissions("system:evaluate:view")
	@GetMapping()
	public String evaluate()
	{
	    return prefix + "/evaluate";
	}
	
	/**
	 * 查询评价列表
	 */
	@RequiresPermissions("system:evaluate:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Evaluate evaluate)
	{
		startPage();
        List<Evaluate> list = evaluateService.selectEvaluateList(evaluate);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出评价列表
	 */
	@RequiresPermissions("system:evaluate:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Evaluate evaluate)
    {
    	List<Evaluate> list = evaluateService.selectEvaluateList(evaluate);
        ExcelUtil<Evaluate> util = new ExcelUtil<Evaluate>(Evaluate.class);
        return util.exportExcel(list, "evaluate");
    }
	
	/**
	 * 新增评价
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存评价
	 */
	@RequiresPermissions("system:evaluate:add")
	@Log(title = "评价", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Evaluate evaluate)
	{		
		return toAjax(evaluateService.insertEvaluate(evaluate));
	}

	/**
	 * 修改评价
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Evaluate evaluate = evaluateService.selectEvaluateById(id);
		mmap.put("evaluate", evaluate);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存评价
	 */
	@RequiresPermissions("system:evaluate:edit")
	@Log(title = "评价", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Evaluate evaluate)
	{		
		return toAjax(evaluateService.updateEvaluate(evaluate));
	}
	
	/**
	 * 删除评价
	 */
	@RequiresPermissions("system:evaluate:remove")
	@Log(title = "评价", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(evaluateService.deleteEvaluateByIds(ids));
	}
	
}
