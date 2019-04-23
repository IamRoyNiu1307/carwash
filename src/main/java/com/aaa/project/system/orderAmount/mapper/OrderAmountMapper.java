package com.aaa.project.system.orderAmount.mapper;

import com.aaa.project.system.orderAmount.domain.OrderAmount;
import java.util.List;	

/**
 * 订单金额 数据层
 * 
 * @author aaa
 * @date 2019-04-23
 */
public interface OrderAmountMapper 
{
	/**
     * 查询订单金额信息
     * 
     * @param id 订单金额ID
     * @return 订单金额信息
     */
	public OrderAmount selectOrderAmountById(Integer id);
	
	/**
     * 查询订单金额列表
     * 
     * @param orderAmount 订单金额信息
     * @return 订单金额集合
     */
	public List<OrderAmount> selectOrderAmountList(OrderAmount orderAmount);
	
	/**
     * 新增订单金额
     * 
     * @param orderAmount 订单金额信息
     * @return 结果
     */
	public int insertOrderAmount(OrderAmount orderAmount);
	
	/**
     * 修改订单金额
     * 
     * @param orderAmount 订单金额信息
     * @return 结果
     */
	public int updateOrderAmount(OrderAmount orderAmount);
	
	/**
     * 删除订单金额
     * 
     * @param id 订单金额ID
     * @return 结果
     */
	public int deleteOrderAmountById(Integer id);
	
	/**
     * 批量删除订单金额
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteOrderAmountByIds(String[] ids);

	/**
	 * 根据订单id查询订单最终金额
	 * @param orderId
	 * @return 订单最终金额
	 */
	public float selectFinalAmountByOrderId(String orderId);
	
}