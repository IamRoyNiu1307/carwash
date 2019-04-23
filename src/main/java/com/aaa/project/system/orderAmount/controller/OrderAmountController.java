package com.aaa.project.system.orderAmount.controller;

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
import com.aaa.project.system.orderAmount.domain.OrderAmount;
import com.aaa.project.system.orderAmount.service.IOrderAmountService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 订单金额 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-23
 */
@Controller
@RequestMapping("/system/orderAmount")
public class OrderAmountController extends BaseController
{
    private String prefix = "system/orderAmount";
	
	@Autowired
	private IOrderAmountService orderAmountService;
	
	@RequiresPermissions("system:orderAmount:view")
	@GetMapping()
	public String orderAmount()
	{
	    return prefix + "/orderAmount";
	}
	
	/**
	 * 查询订单金额列表
	 */
	@RequiresPermissions("system:orderAmount:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(OrderAmount orderAmount)
	{
		startPage();
        List<OrderAmount> list = orderAmountService.selectOrderAmountList(orderAmount);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出订单金额列表
	 */
	@RequiresPermissions("system:orderAmount:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OrderAmount orderAmount)
    {
    	List<OrderAmount> list = orderAmountService.selectOrderAmountList(orderAmount);
        ExcelUtil<OrderAmount> util = new ExcelUtil<OrderAmount>(OrderAmount.class);
        return util.exportExcel(list, "orderAmount");
    }
	
	/**
	 * 新增订单金额
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存订单金额
	 */
	@RequiresPermissions("system:orderAmount:add")
	@Log(title = "订单金额", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(OrderAmount orderAmount)
	{		
		return toAjax(orderAmountService.insertOrderAmount(orderAmount));
	}

	/**
	 * 修改订单金额
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		OrderAmount orderAmount = orderAmountService.selectOrderAmountById(id);
		mmap.put("orderAmount", orderAmount);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存订单金额
	 */
	@RequiresPermissions("system:orderAmount:edit")
	@Log(title = "订单金额", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(OrderAmount orderAmount)
	{		
		return toAjax(orderAmountService.updateOrderAmount(orderAmount));
	}
	
	/**
	 * 删除订单金额
	 */
	@RequiresPermissions("system:orderAmount:remove")
	@Log(title = "订单金额", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(orderAmountService.deleteOrderAmountByIds(ids));
	}
	
}
