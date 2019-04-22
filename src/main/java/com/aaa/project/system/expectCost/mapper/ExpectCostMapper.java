package com.aaa.project.system.expectCost.mapper;

import com.aaa.project.system.expectCost.domain.ExpectCost;
import java.util.List;	

/**
 * 预算 数据层
 * 
 * @author aaa
 * @date 2019-04-22
 */
public interface ExpectCostMapper 
{
	/**
     * 查询预算信息
     * 
     * @param id 预算ID
     * @return 预算信息
     */
	public ExpectCost selectExpectCostById(Integer id);
	
	/**
     * 查询预算列表
     * 
     * @param expectCost 预算信息
     * @return 预算集合
     */
	public List<ExpectCost> selectExpectCostList(ExpectCost expectCost);
	
	/**
     * 新增预算
     * 
     * @param expectCost 预算信息
     * @return 结果
     */
	public int insertExpectCost(ExpectCost expectCost);
	
	/**
     * 修改预算
     * 
     * @param expectCost 预算信息
     * @return 结果
     */
	public int updateExpectCost(ExpectCost expectCost);
	
	/**
     * 删除预算
     * 
     * @param id 预算ID
     * @return 结果
     */
	public int deleteExpectCostById(Integer id);
	
	/**
     * 批量删除预算
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteExpectCostByIds(String[] ids);

	/**
	 * 根据编号查找对应的描述
	 * @param id 编号
	 * @return 描述
	 */
	public String selectExpectCostNameById(Integer id);

	/**
	 * 查询所有的预算
	 * @return 预算集合
	 */
	public List<ExpectCost> selectAllExpect();
	
}