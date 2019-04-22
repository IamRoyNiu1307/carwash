package com.aaa.project.system.keyInfo.controller;

import com.aaa.common.utils.poi.ExcelUtil;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.project.system.keyInfo.domain.KeyInfo;
import com.aaa.project.system.keyInfo.service.IKeyInfoService;
import com.aaa.project.system.status.domain.Status;
import com.aaa.project.system.status.service.IStatusService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 钥匙 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Controller
@RequestMapping("/system/keyInfo")
public class KeyInfoController extends BaseController
{
    private String prefix = "system/keyInfo";
	
	@Autowired
	private IKeyInfoService keyInfoService;
	@Autowired
	private IStatusService statusService;
	
	@RequiresPermissions("system:keyInfo:view")
	@GetMapping()
	public String keyInfo()
	{
	    return prefix + "/keyInfo";
	}
	
	/**
	 * 查询钥匙列表
	 */
	@RequiresPermissions("system:keyInfo:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(KeyInfo keyInfo)
	{
		startPage();
        List<KeyInfo> list = keyInfoService.selectKeyInfoList(keyInfo);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出钥匙列表
	 */
	@RequiresPermissions("system:keyInfo:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(KeyInfo keyInfo)
    {
    	List<KeyInfo> list = keyInfoService.selectKeyInfoList(keyInfo);
        ExcelUtil<KeyInfo> util = new ExcelUtil<KeyInfo>(KeyInfo.class);
        return util.exportExcel(list, "keyInfo");
    }
	
	/**
	 * 新增钥匙
	 */
	@GetMapping("/add")
	public String add(HttpServletRequest req)
	{
		List<Status> statusList=statusService.selectAllKeyStatus();
		req.setAttribute("statusList",statusList);
		return prefix + "/add";
	}
	
	/**
	 * 新增保存钥匙
	 */
	@RequiresPermissions("system:keyInfo:add")
	@Log(title = "钥匙", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(KeyInfo keyInfo)
	{		
		return toAjax(keyInfoService.insertKeyInfo(keyInfo));
	}

	/**
	 * 修改钥匙
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		KeyInfo keyInfo = keyInfoService.selectKeyInfoById(id);
		List<Status> statusList = statusService.selectAllKeyStatus();
		mmap.put("keyInfo", keyInfo);
		mmap.put("statusList",statusList);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存钥匙
	 */
	@RequiresPermissions("system:keyInfo:edit")
	@Log(title = "钥匙", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(KeyInfo keyInfo)
	{		
		return toAjax(keyInfoService.updateKeyInfo(keyInfo));
	}
	
	/**
	 * 删除钥匙
	 */
	@RequiresPermissions("system:keyInfo:remove")
	@Log(title = "钥匙", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(keyInfoService.deleteKeyInfoByIds(ids));
	}
	
}
