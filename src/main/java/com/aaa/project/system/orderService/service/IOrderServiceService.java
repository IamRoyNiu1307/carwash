package com.aaa.project.system.orderService.service;

import com.aaa.project.system.orderService.domain.OrderService;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 订单服务关系 服务层
 * 
 * @author aaa
 * @date 2019-04-22
 */
public interface IOrderServiceService 
{
	/**
     * 查询订单服务关系信息
     * 
     * @param id 订单服务关系ID
     * @return 订单服务关系信息
     */
	public OrderService selectOrderServiceById(Integer id);
	
	/**
     * 查询订单服务关系列表
     * 
     * @param orderService 订单服务关系信息
     * @return 订单服务关系集合
     */
	public List<OrderService> selectOrderServiceList(OrderService orderService);


	/**
	 * 查询订单服务关系列表
	 *
	 * @param orderId 订单id
	 * @return 订单服务关系集合
	 */
	public List<OrderService> selectOrderService(String orderId);
	
	/**
     * 新增订单服务关系
     * 
     * @param orderService 订单服务关系信息
     * @return 结果
     */
	public int insertOrderService(OrderService orderService);

	/**
	 * 订单服务
	 *
	 * @param orderId 订单id
	 * @param list 服务id 列表
	 * @return 结果
	 */
	public int insertOrder(String orderId, @Param("list") List<String> list);

	/**
     * 修改订单服务关系
     * 
     * @param orderService 订单服务关系信息
     * @return 结果
     */
	public int updateOrderService(OrderService orderService);
		
	/**
     * 删除订单服务关系信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteOrderServiceByIds(String ids);
	
}
