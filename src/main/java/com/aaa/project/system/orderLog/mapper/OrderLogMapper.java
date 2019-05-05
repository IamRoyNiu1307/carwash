package com.aaa.project.system.orderLog.mapper;

import com.aaa.project.system.orderLog.domain.OrderLog;
import com.aaa.project.system.orderLog.domain.OrderLogVO;

import java.util.List;

/**
 * 订单日志 数据层
 * 
 * @author aaa
 * @date 2019-04-26
 */
public interface OrderLogMapper 
{
	/**
     * 查询订单日志信息
     * 
     * @param id 订单日志ID
     * @return 订单日志信息
     */
	public OrderLog selectOrderLogById(Integer id);
	
	/**
     * 查询订单日志列表
     * 
     * @param orderLog 订单日志信息
     * @return 订单日志集合
     */
	public List<OrderLog> selectOrderLogList(OrderLog orderLog);

	/**
	 * 查询订单日志数量
	 *
	 * @param orderId 订单id
	 * @return 订单日志数量
	 */
	public int selectOrderCountByOrderId(String orderId);

	/**
	 * 查询日志及图片
	 * @param orderId 订单id
	 * @return 日志
	 */
	public List<OrderLogVO> selectOrderLog(String orderId);
	
	/**
     * 新增订单日志
     * 
     * @param orderLog 订单日志信息
     * @return 结果
     */
	public int insertOrderLog(OrderLog orderLog);
	
	/**
     * 修改订单日志
     * 
     * @param orderLog 订单日志信息
     * @return 结果
     */
	public int updateOrderLog(OrderLog orderLog);
	
	/**
     * 删除订单日志
     * 
     * @param id 订单日志ID
     * @return 结果
     */
	public int deleteOrderLogById(Integer id);
	
	/**
     * 批量删除订单日志
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteOrderLogByIds(String[] ids);
	
}