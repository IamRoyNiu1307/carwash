package com.aaa.project.system.orderService.controller;

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
import com.aaa.project.system.orderService.domain.OrderService;
import com.aaa.project.system.orderService.service.IOrderServiceService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 订单服务关系 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-22
 */
@Controller
@RequestMapping("/system/orderService")
public class OrderServiceController extends BaseController
{
    private String prefix = "system/orderService";
	
	@Autowired
	private IOrderServiceService orderServiceService;
	
	@RequiresPermissions("system:orderService:view")
	@GetMapping()
	public String orderService()
	{
	    return prefix + "/orderService";
	}
	
	/**
	 * 查询订单服务关系列表
	 */
	@RequiresPermissions("system:orderService:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(OrderService orderService)
	{
		startPage();
        List<OrderService> list = orderServiceService.selectOrderServiceList(orderService);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出订单服务关系列表
	 */
	@RequiresPermissions("system:orderService:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OrderService orderService)
    {
    	List<OrderService> list = orderServiceService.selectOrderServiceList(orderService);
        ExcelUtil<OrderService> util = new ExcelUtil<OrderService>(OrderService.class);
        return util.exportExcel(list, "orderService");
    }
	
	/**
	 * 新增订单服务关系
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存订单服务关系
	 */
	@RequiresPermissions("system:orderService:add")
	@Log(title = "订单服务关系", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(OrderService orderService)
	{		
		return toAjax(orderServiceService.insertOrderService(orderService));
	}

	/**
	 * 修改订单服务关系
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		OrderService orderService = orderServiceService.selectOrderServiceById(id);
		mmap.put("orderService", orderService);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存订单服务关系
	 */
	@RequiresPermissions("system:orderService:edit")
	@Log(title = "订单服务关系", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(OrderService orderService)
	{		
		return toAjax(orderServiceService.updateOrderService(orderService));
	}
	
	/**
	 * 删除订单服务关系
	 */
	@RequiresPermissions("system:orderService:remove")
	@Log(title = "订单服务关系", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(orderServiceService.deleteOrderServiceByIds(ids));
	}
	
}
