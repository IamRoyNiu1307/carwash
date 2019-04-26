package com.aaa.project.system.lootOrder.controller;

import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.project.system.expectCost.domain.ExpectCost;
import com.aaa.project.system.lootOrder.service.ILootOrderService;
import com.aaa.project.system.model.domain.Model;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.service.IOrderService;
import com.aaa.project.system.orderService.domain.OrderService;
import com.aaa.project.system.status.domain.Status;
import com.aaa.project.system.store.domain.Store;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/system/lootOrder")
public class lootOrderController extends BaseController {
    @Autowired
    private ILootOrderService lootOrderService;
    @Autowired
    private IOrderService orderService;

    private String prefix = "system/lootOrder";

    /**
     * 跳转到页面
     *
     * @return showOrder.html
     */
    @RequiresPermissions("system:store:lootOrder")
    @GetMapping()
    public String lootOrder() {
        return prefix + "/showOrder";
    }

    @RequiresPermissions("system:lootOrder:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Order order) {
        startPage();
        List<Order> list = lootOrderService.selectCanLootOrderList(order);
        return getDataTable(list);
    }

    /**
     * 展现order信息
     *
     * @param id
     * @param mmap
     * @return order信息
     */
    @GetMapping("/showOrderInfoUrl/{id}")
    public String showOrderInfo(@PathVariable("id") Integer id, ModelMap mmap) {
        mmap.put("order", orderService.selectOrderById(id));
        return prefix + "/showOrderInfo";
    }

    /**
     * 抢订单
     * @param order
     * @return 结果
     */
    @PostMapping("/loot")
    @ResponseBody
    public AjaxResult lootOrder(Order order) {

        return toAjax(lootOrderService.lootOrder(order));
    }


}
