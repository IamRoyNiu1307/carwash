package com.aaa.project.system.orderService.service;

import java.util.List;

import com.aaa.project.system.storeService.domain.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.orderService.mapper.OrderServiceMapper;
import com.aaa.project.system.orderService.domain.OrderService;
import com.aaa.project.system.orderService.service.IOrderServiceService;
import com.aaa.common.support.Convert;

/**
 * 订单服务关系 服务层实现
 * 
 * @author aaa
 * @date 2019-04-22
 */
@Service
public class OrderServiceServiceImpl implements IOrderServiceService 
{
	@Autowired
	private OrderServiceMapper orderServiceMapper;

	/**
     * 查询订单服务关系信息
     * 
     * @param id 订单服务关系ID
     * @return 订单服务关系信息
     */
    @Override
	public OrderService selectOrderServiceById(Integer id)
	{
	    return orderServiceMapper.selectOrderServiceById(id);
	}
	
	/**
     * 查询订单服务关系列表
     * 
     * @param orderService 订单服务关系信息
     * @return 订单服务关系集合
     */
	@Override
	public List<OrderService> selectOrderServiceList(OrderService orderService)
	{
	    return orderServiceMapper.selectOrderServiceList(orderService);
	}

	/**
	 *
	 * @param orderId 订单id
	 * @return orderService
	 */
	@Override
	public List<OrderService> selectOrderService(String orderId) {
		return orderServiceMapper.selectOrderService(orderId);
	}

	/**
     * 新增订单服务关系
     * 
     * @param orderService 订单服务关系信息
     * @return 结果
     */
	@Override
	public int insertOrderService(OrderService orderService)
	{
	    return orderServiceMapper.insertOrderService(orderService);
	}

	/**
	 *
	 * @param orderId 订单id
	 * @param list 服务id 列表
	 * @return 结果
	 */
	@Override
	public int insertOrder(String orderId, List<String> list) {
		return orderServiceMapper.insertOrder(orderId,list);
	}

	/**
     * 修改订单服务关系
     * 
     * @param orderService 订单服务关系信息
     * @return 结果
     */
	@Override
	public int updateOrderService(OrderService orderService)
	{
	    return orderServiceMapper.updateOrderService(orderService);
	}

	/**
     * 删除订单服务关系对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteOrderServiceByIds(String ids)
	{
		return orderServiceMapper.deleteOrderServiceByIds(Convert.toStrArray(ids));
	}

}
