package com.aaa.project.system.orderService.mapper;

import com.aaa.project.system.orderService.domain.OrderService;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * 订单服务关系 数据层
 * 
 * @author aaa
 * @date 2019-04-22
 */
public interface OrderServiceMapper 
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
	 *
	 * @param orderId 订单id
	 * @return 订单服务
	 */
	public List selectOrderService(String orderId);
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
	public int insertOrder(@Param("orderId") String orderId, @Param("list") List<String> list);
	
	/**
     * 修改订单服务关系
     * 
     * @param orderService 订单服务关系信息
     * @return 结果
     */
	public int updateOrderService(OrderService orderService);
	
	/**
     * 删除订单服务关系
     * 
     * @param id 订单服务关系ID
     * @return 结果
     */
	public int deleteOrderServiceById(Integer id);
	
	/**
     * 批量删除订单服务关系
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteOrderServiceByIds(String[] ids);
	
}