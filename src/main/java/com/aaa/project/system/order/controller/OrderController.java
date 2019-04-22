package com.aaa.project.system.order.controller;

import com.aaa.common.utils.poi.ExcelUtil;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.project.system.model.domain.Model;
import com.aaa.project.system.model.service.IModelService;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.service.IOrderService;
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
 * 订单 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Controller
@RequestMapping("/system/order")
public class OrderController extends BaseController
{
    private String prefix = "system/order";
	
	@Autowired
	private IOrderService orderService;
	@Autowired
	private IStatusService statusService;
	@Autowired
	private IModelService modelService;
	
	@RequiresPermissions("system:order:view")
	@GetMapping()
	public String order()
	{
	    return prefix + "/order";
	}
	
	/**
	 * 查询订单列表
	 */
	@RequiresPermissions("system:order:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Order order)
	{
		startPage();
        List<Order> list = orderService.selectOrderList(order);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出订单列表
	 */
	@RequiresPermissions("system:order:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Order order)
    {
    	List<Order> list = orderService.selectOrderList(order);
        ExcelUtil<Order> util = new ExcelUtil<Order>(Order.class);
        return util.exportExcel(list, "order");
    }
	
	/**
	 * 新增订单
	 */
	@GetMapping("/add")
	public String add(HttpServletRequest req)
	{
		List<Status> statusList = statusService.selectAllOrderStatus();
		List<Model> models = modelService.selectAllModel();
		req.setAttribute("statusList",statusList);
		req.setAttribute("modelList",models);
		return prefix + "/add";
	}
	
	/**
	 * 新增保存订单
	 */
	@RequiresPermissions("system:order:add")
	@Log(title = "订单", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Order order)
	{		
		return toAjax(orderService.insertOrder(order));
	}

	/**
	 * 修改订单
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Order order = orderService.selectOrderById(id);
		List<Status> statusList = statusService.selectAllOrderStatus();
		List<Model> models = modelService.selectAllModel();
		mmap.put("modelList",models);
		mmap.put("order", order);
		mmap.put("statusList",statusList);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存订单
	 */
	@RequiresPermissions("system:order:edit")
	@Log(title = "订单", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Order order)
	{		
		return toAjax(orderService.updateOrder(order));
	}
	
	/**
	 * 删除订单
	 */
	@RequiresPermissions("system:order:remove")
	@Log(title = "订单", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(orderService.deleteOrderByIds(ids));
	}
	
}
