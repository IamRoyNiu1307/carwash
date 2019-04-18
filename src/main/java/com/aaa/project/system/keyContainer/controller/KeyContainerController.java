package com.aaa.project.system.keyContainer.controller;

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
import com.aaa.project.system.keyContainer.domain.KeyContainer;
import com.aaa.project.system.keyContainer.service.IKeyContainerService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 钥匙柜 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Controller
@RequestMapping("/system/keyContainer")
public class KeyContainerController extends BaseController
{
    private String prefix = "system/keyContainer";
	
	@Autowired
	private IKeyContainerService keyContainerService;
	
	@RequiresPermissions("system:keyContainer:view")
	@GetMapping()
	public String keyContainer()
	{
	    return prefix + "/keyContainer";
	}
	
	/**
	 * 查询钥匙柜列表
	 */
	@RequiresPermissions("system:keyContainer:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(KeyContainer keyContainer)
	{
		startPage();
        List<KeyContainer> list = keyContainerService.selectKeyContainerList(keyContainer);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出钥匙柜列表
	 */
	@RequiresPermissions("system:keyContainer:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KeyContainer keyContainer)
    {
    	List<KeyContainer> list = keyContainerService.selectKeyContainerList(keyContainer);
        ExcelUtil<KeyContainer> util = new ExcelUtil<KeyContainer>(KeyContainer.class);
        return util.exportExcel(list, "keyContainer");
    }
	
	/**
	 * 新增钥匙柜
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存钥匙柜
	 */
	@RequiresPermissions("system:keyContainer:add")
	@Log(title = "钥匙柜", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(KeyContainer keyContainer)
	{		
		return toAjax(keyContainerService.insertKeyContainer(keyContainer));
	}

	/**
	 * 修改钥匙柜
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		KeyContainer keyContainer = keyContainerService.selectKeyContainerById(id);
		mmap.put("keyContainer", keyContainer);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存钥匙柜
	 */
	@RequiresPermissions("system:keyContainer:edit")
	@Log(title = "钥匙柜", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(KeyContainer keyContainer)
	{		
		return toAjax(keyContainerService.updateKeyContainer(keyContainer));
	}
	
	/**
	 * 删除钥匙柜
	 */
	@RequiresPermissions("system:keyContainer:remove")
	@Log(title = "钥匙柜", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(keyContainerService.deleteKeyContainerByIds(ids));
	}
	
}
