package com.aaa.project.system.order.service;

import cn.hutool.core.date.DateUnit;
import cn.hutool.core.date.DateUtil;
import com.aaa.common.support.Convert;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.mapper.OrderMapper;
import com.aaa.project.system.orderAmount.mapper.OrderAmountMapper;
import com.aaa.project.system.orderService.domain.OrderService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 订单 服务层实现
 *
 * @author aaa
 * @date 2019-04-19
 */
@Service
public class OrderServiceImpl implements IOrderService
{
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private OrderAmountMapper orderAmountMapper;

	/**
     * 查询订单信息
     *
     * @param id 订单ID
     * @return 订单信息
     */
    @Override
	public Order selectOrderById(Integer id)
	{
	    return orderMapper.selectOrderById(id);
	}

	/**
     * 查询订单列表
     *
     * @param order 订单信息
     * @return 订单集合
     */
	@Override
	public List<Order> selectOrderList(Order order)
	{
	    return orderMapper.selectOrderList(order);
	}

	/**
	 *
	 * @param orderId 订单id
	 * @return orderservice
	 */
	@Override
	public List<OrderService> selectOrderService(String orderId) {
		return orderMapper.selectOrderService(orderId);
	}

	/**
     * 新增订单
     *
     * @param order 订单信息
     * @return 结果
     */
	@Override
	public int insertOrder(Order order)
	{
	    return orderMapper.insertOrder(order);
	}

	/**
     * 修改订单
     *
     * @param order 订单信息
     * @return 结果
     */
	@Override
	public int updateOrder(Order order)
	{
	    return orderMapper.updateOrder(order);
	}

	/**
     * 删除订单对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteOrderByIds(String ids)
	{
		return orderMapper.deleteOrderByIds(Convert.toStrArray(ids));
	}

	/**
	 * 取消订单
	 *
	 * @param orderId 需要取消的订单ID
	 * @param finishDate 订单完成时间
	 */
	@Override
	public float cancelOrderByOrderId(@Param("orderId") String orderId, @Param("finishDate") Date finishDate){

		Order order = orderMapper.selectOrderByOrderId(orderId);
		if(DateUtil.between(order.getPayDate(),finishDate,DateUnit.MINUTE)<=5){
			orderMapper.cancelOrderByOrderId(orderId,finishDate);
			return 0;
		}else {
			float finalAmout = orderAmountMapper.selectFinalAmountByOrderId(orderId);
			return finalAmout*2;
		}
	};

	/**
	 * 根据账户和订单状态ID查询所有订单或者根据账户查询所有订单
	 * @param consumerAccount 用户账户
	 * @param statusId 订单状态ID
	 * @return 订单列表
	 */
	@Override
	public List<Order> selectOrderListByConsumerAccountAndStatusId(@Param("consumerAccount")String consumerAccount,@Param("statusId")Integer statusId){
		List<Order> orders = orderMapper.selectOrderListByConsumerAccountAndStatusId(consumerAccount, statusId);
		return orders;
	};

	/**
	 * 根据订单编号查询订单信息
	 * @param orderId 订单编号
	 * @return 订单信息
	 */
	@Override
	public Order selectOrderByOrderId(String orderId){
		return orderMapper.selectOrderByOrderId(orderId);
	};

}
