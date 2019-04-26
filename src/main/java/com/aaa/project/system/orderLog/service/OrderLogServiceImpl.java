package com.aaa.project.system.orderLog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.orderLog.mapper.OrderLogMapper;
import com.aaa.project.system.orderLog.domain.OrderLog;
import com.aaa.project.system.orderLog.service.IOrderLogService;
import com.aaa.common.support.Convert;

/**
 * 订单日志 服务层实现
 *
 * @author aaa
 * @date 2019-04-26
 */
@Service
public class OrderLogServiceImpl implements IOrderLogService {
    @Autowired
    private OrderLogMapper orderLogMapper;

    /**
     * 查询订单日志信息
     *
     * @param id 订单日志ID
     * @return 订单日志信息
     */
    @Override
    public OrderLog selectOrderLogById(Integer id) {
        return orderLogMapper.selectOrderLogById(id);
    }

    /**
     * 查询订单日志列表
     *
     * @param orderLog 订单日志信息
     * @return 订单日志集合
     */
    @Override
    public List<OrderLog> selectOrderLogList(OrderLog orderLog) {
        return orderLogMapper.selectOrderLogList(orderLog);
    }

    /**
     * 查询订单数量
     *
     * @param orderId 订单id
     * @return 数量
     */
    @Override
    public int selectOrderCountByOrderId(String orderId) {
        return orderLogMapper.selectOrderCountByOrderId(orderId);
    }

    /**
     * 新增订单日志
     *
     * @param orderLog 订单日志信息
     * @return 结果
     */
    @Override
    public int insertOrderLog(OrderLog orderLog) {
        return orderLogMapper.insertOrderLog(orderLog);
    }

    /**
     * 修改订单日志
     *
     * @param orderLog 订单日志信息
     * @return 结果
     */
    @Override
    public int updateOrderLog(OrderLog orderLog) {
        return orderLogMapper.updateOrderLog(orderLog);
    }

    /**
     * 删除订单日志对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteOrderLogByIds(String ids) {
        return orderLogMapper.deleteOrderLogByIds(Convert.toStrArray(ids));
    }

}
