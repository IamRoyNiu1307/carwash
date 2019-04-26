package com.aaa.project.system.logImage.controller;

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
import com.aaa.project.system.logImage.domain.LogImage;
import com.aaa.project.system.logImage.service.ILogImageService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 日志图片 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-26
 */
@Controller
@RequestMapping("/system/logImage")
public class LogImageController extends BaseController
{
    private String prefix = "system/logImage";
	
	@Autowired
	private ILogImageService logImageService;
	
	@RequiresPermissions("system:logImage:view")
	@GetMapping()
	public String logImage()
	{
	    return prefix + "/logImage";
	}
	
	/**
	 * 查询日志图片列表
	 */
	@RequiresPermissions("system:logImage:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(LogImage logImage)
	{
		startPage();
        List<LogImage> list = logImageService.selectLogImageList(logImage);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出日志图片列表
	 */
	@RequiresPermissions("system:logImage:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(LogImage logImage)
    {
    	List<LogImage> list = logImageService.selectLogImageList(logImage);
        ExcelUtil<LogImage> util = new ExcelUtil<LogImage>(LogImage.class);
        return util.exportExcel(list, "logImage");
    }
	
	/**
	 * 新增日志图片
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存日志图片
	 */
	@RequiresPermissions("system:logImage:add")
	@Log(title = "日志图片", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(LogImage logImage)
	{		
		return toAjax(logImageService.insertLogImage(logImage));
	}

	/**
	 * 修改日志图片
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		LogImage logImage = logImageService.selectLogImageById(id);
		mmap.put("logImage", logImage);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存日志图片
	 */
	@RequiresPermissions("system:logImage:edit")
	@Log(title = "日志图片", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(LogImage logImage)
	{		
		return toAjax(logImageService.updateLogImage(logImage));
	}
	
	/**
	 * 删除日志图片
	 */
	@RequiresPermissions("system:logImage:remove")
	@Log(title = "日志图片", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(logImageService.deleteLogImageByIds(ids));
	}
	
}
