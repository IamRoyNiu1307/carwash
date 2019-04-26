package com.aaa.project.system.lootOrder.service;

import com.aaa.project.system.order.domain.Order;

import java.util.List;

public interface ILootOrderService {
    /**
     * 查询可以抢单的订单信息
     *
     * @param order
     * @return 订单列表
     */
    public List<Order> selectCanLootOrderList(Order order);

    /**
     * 抢单
     *
     * @param order
     * @return 结果
     */
    public int lootOrder(Order order);
}
