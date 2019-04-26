package com.aaa.project.system.lootOrder.service;

import com.aaa.common.support.Convert;
import com.aaa.common.utils.security.ShiroUtils;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.mapper.OrderMapper;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.mapper.UserAccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LootOrderServiceImpl implements ILootOrderService {
    @Autowired
    private OrderMapper orderMapper;
    //@Autowired
    //private
    @Autowired
    private UserAccountMapper userAccountMapper;

    @Override
    public List<Order> selectCanLootOrderList(Order order) {
        //进行业务处理
        //获取当前登录者的信息 并且查询到当前用户的门店
        Long userId = ShiroUtils.getUserId();
        UserAccount userAccount = userAccountMapper.selectUserAccountByUserId(userId);
        return orderMapper.selectCanLootOrderList(userAccount.getStoreId());
    }

    @Override
    public int lootOrder(Order order) {
        //获取当前用户门店ID
        Long userId = ShiroUtils.getUserId();
        UserAccount userAccount = userAccountMapper.selectUserAccountByUserId(userId);
        order.setStoreId(userAccount.getStoreId());
        //计算出该订单的花费：
          //1-查询出该订单的服务有哪些

          //2-查询出订单所属门店
          //3-计算所有服务花费
        return orderMapper.lootOrder(order);
    }
}
