package com.aaa.project.system.order.service;

import com.aaa.project.system.order.domain.Order;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * 订单 服务层
 *
 * @author aaa
 * @date 2019-04-19
 */
public interface IOrderService
{
	/**
     * 查询订单信息
     *
     * @param id 订单ID
     * @return 订单信息
     */
	public Order selectOrderById(Integer id);

	/**
     * 查询订单列表
     *
     * @param order 订单信息
     * @return 订单集合
     */
	public List<Order> selectOrderList(Order order);

	/**
     * 新增订单
     *
     * @param order 订单信息
     * @return 结果
     */
	public int insertOrder(Order order);

	/**
     * 修改订单
     *
     * @param order 订单信息
     * @return 结果
     */
	public int updateOrder(Order order);

	/**
     * 删除订单信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteOrderByIds(String ids);

	/**
	 * 取消订单
	 *
	 * @param orderId 需要取消的订单ID
	 * @param finishDate 订单完成时间
	 */

	public void cancelOrderByOrderId(@Param("orderId") String orderId,@Param("finishDate") Date finishDate);

    /**
     * 根据账户和订单状态ID查询所有订单或者根据账户查询所有订单
     * @param consumerAccount 用户账户
     * @param statusId 订单状态ID
     * @return 订单列表
     */
	public List<Order> selectOrderListByConsumerAccountAndStatusId(@Param("consumerAccount")String consumerAccount,@Param("statusId")Integer statusId);

	/**
	 * 根据订单编号查询订单信息
	 * @param orderId 订单编号
	 * @return 订单信息
	 */
	public Order selectOrderByOrderId(String orderId);

}
