package com.aaa.project.system.assignOrder.controller;

import com.aaa.common.utils.security.ShiroUtils;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.service.IOrderService;
import com.aaa.project.system.user.domain.User;
import com.aaa.project.system.user.service.IUserService;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.service.IUserAccountService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.aaa.project.myconst.MyConst.*;

/**
 * 订单 指派订单
 *
 * @author 杨军超
 * @date 2019-04-26
 */
@Controller
@RequestMapping("/system/assignOrder")
public class AssignOrderController extends BaseController {
    private String prefix="system/assignOrder";
    @Autowired
    private IOrderService orderService;
    @Autowired
    private IUserAccountService userAccountService;
    @Autowired
    private IUserService userService;

    @RequiresPermissions("system:assignOrder:view")
    @GetMapping()
    public String order()
    {
        return prefix + "/assignOrder";
    }

    /**
     * 查询订单列表
     */
    @RequiresPermissions("system:assignOrder:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Order order)
    {
        //获取登录用户的门店ID
        String storeId = userAccountService.selectStoreIdByUserId(ShiroUtils.getUserId());
        order.setStoreId(storeId);
        order.setStatusId(STATUS_ORDER_PAID);
        startPage();
        //查询该门店下的所有已付款订单
        List<Order> list = orderService.selectOrderList(order);
        return getDataTable(list);
    }

    /**
     * 修改订单：指派任务
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap)
    {
        //根据id查询订单
        Order order = orderService.selectOrderById(id);
        //创建一个新的userAccount对象
        UserAccount userAccount = new UserAccount();
        //从订单中获取它所属的店铺id，根据店铺id查询该店铺的所有员工
        userAccount.setStoreId(order.getStoreId());
        List<UserAccount> userAccounts = userAccountService.selectUserAccountList(userAccount);
        //新建一个用户表
        List<Map<String,Object>> missionList=new ArrayList<>();
        for (UserAccount eachAccount : userAccounts ){
            //根据员工的userid查询该员工的角色
            Long aLong = userService.selectRoleIdByUserId(eachAccount.getUserId());
            //判断是否为洗车员
            if(aLong.equals(STAFF_ROLE_ID)){
                HashMap<String, Object> mission = new HashMap<>();
                User user = userService.selectUserById(eachAccount.getUserId());
                //是洗车员就加进mission中
                mission.put("user",user);
                //查询他的所有订单
                Order missionOrder = new Order();
                missionOrder.setUserAccount(user.getPhonenumber());
                List<Order> orders = orderService.selectOrderList(missionOrder);
                //判断洗车员当前的状态，默认为空闲
                mission.put("status",0);
                //如果有订单，判断订单状态
                if(orders!=null&&orders.size()!=0){
                    for(Order eachOrder:orders){
                        //如果订单状态为进行中
                        if(eachOrder.getStatusId().equals(STATUS_ORDER_ONGOING)){
                            //则洗车员状态为忙碌
                            mission.put("status",1);
                            break;
                        }
                    }
                }
                missionList.add(mission);
            }
        }
        mmap.put("order", order);
        mmap.put("missionList",missionList);
        return prefix + "/assign";
    }
    /**
     * 修改保存订单
     */
    @RequiresPermissions("system:assignOrder:save")
    @Log(title = "订单", businessType = BusinessType.UPDATE)
    @PostMapping("/save")
    @ResponseBody
    public AjaxResult editSave(@RequestParam("userId") Integer userId, @RequestParam("id") int id)
    {
        User user = userService.selectUserById(Long.parseLong(userId.toString()));
        Order order = orderService.selectOrderById(id);
        order.setUserAccount(user.getPhonenumber());
        order.setStatusId(STATUS_ORDER_ONGOING);
        return toAjax( orderService.updateOrder(order));
    }
}
