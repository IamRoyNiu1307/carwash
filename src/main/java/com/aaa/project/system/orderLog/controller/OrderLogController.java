package com.aaa.project.system.orderLog.controller;

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
import com.aaa.project.system.orderLog.domain.OrderLog;
import com.aaa.project.system.orderLog.service.IOrderLogService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 订单日志 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-26
 */
@Controller
@RequestMapping("/system/orderLog")
public class OrderLogController extends BaseController
{
    private String prefix = "system/orderLog";
	
	@Autowired
	private IOrderLogService orderLogService;
	
	@RequiresPermissions("system:orderLog:view")
	@GetMapping()
	public String orderLog()
	{
	    return prefix + "/orderLog";
	}
	
	/**
	 * 查询订单日志列表
	 */
	@RequiresPermissions("system:orderLog:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(OrderLog orderLog)
	{
		startPage();
        List<OrderLog> list = orderLogService.selectOrderLogList(orderLog);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出订单日志列表
	 */
	@RequiresPermissions("system:orderLog:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OrderLog orderLog)
    {
    	List<OrderLog> list = orderLogService.selectOrderLogList(orderLog);
        ExcelUtil<OrderLog> util = new ExcelUtil<OrderLog>(OrderLog.class);
        return util.exportExcel(list, "orderLog");
    }
	
	/**
	 * 新增订单日志
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存订单日志
	 */
	@RequiresPermissions("system:orderLog:add")
	@Log(title = "订单日志", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(OrderLog orderLog)
	{		
		return toAjax(orderLogService.insertOrderLog(orderLog));
	}

	/**
	 * 修改订单日志
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		OrderLog orderLog = orderLogService.selectOrderLogById(id);
		mmap.put("orderLog", orderLog);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存订单日志
	 */
	@RequiresPermissions("system:orderLog:edit")
	@Log(title = "订单日志", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(OrderLog orderLog)
	{		
		return toAjax(orderLogService.updateOrderLog(orderLog));
	}
	
	/**
	 * 删除订单日志
	 */
	@RequiresPermissions("system:orderLog:remove")
	@Log(title = "订单日志", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(orderLogService.deleteOrderLogByIds(ids));
	}
	
}
