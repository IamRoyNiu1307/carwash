package com.aaa.project.system.orderAmount.service;

import com.aaa.common.support.Convert;
import com.aaa.project.system.orderAmount.domain.OrderAmount;
import com.aaa.project.system.orderAmount.mapper.OrderAmountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 订单金额 服务层实现
 * 
 * @author aaa
 * @date 2019-04-23
 */
@Service
public class OrderAmountServiceImpl implements IOrderAmountService 
{
	@Autowired
	private OrderAmountMapper orderAmountMapper;

	/**
     * 查询订单金额信息
     * 
     * @param id 订单金额ID
     * @return 订单金额信息
     */
    @Override
	public OrderAmount selectOrderAmountById(Integer id)
	{
	    return orderAmountMapper.selectOrderAmountById(id);
	}
	
	/**
     * 查询订单金额列表
     * 
     * @param orderAmount 订单金额信息
     * @return 订单金额集合
     */
	@Override
	public List<OrderAmount> selectOrderAmountList(OrderAmount orderAmount)
	{
	    return orderAmountMapper.selectOrderAmountList(orderAmount);
	}
	
    /**
     * 新增订单金额
     * 
     * @param orderAmount 订单金额信息
     * @return 结果
     */
	@Override
	public int insertOrderAmount(OrderAmount orderAmount)
	{
	    return orderAmountMapper.insertOrderAmount(orderAmount);
	}
	
	/**
     * 修改订单金额
     * 
     * @param orderAmount 订单金额信息
     * @return 结果
     */
	@Override
	public int updateOrderAmount(OrderAmount orderAmount)
	{
	    return orderAmountMapper.updateOrderAmount(orderAmount);
	}

	/**
     * 删除订单金额对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteOrderAmountByIds(String ids)
	{
		return orderAmountMapper.deleteOrderAmountByIds(Convert.toStrArray(ids));
	}

	/**
	 * 根据订单id查询订单最终金额
	 * @param orderId
	 * @return 订单最终金额
	 */
	@Override
	public float selectFinalAmountOrderByOrderId(String orderId){return orderAmountMapper.selectFinalAmountByOrderId(orderId); };
	
}
