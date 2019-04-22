package com.aaa.project.system.expectCost.service;

import com.aaa.common.support.Convert;
import com.aaa.project.system.expectCost.domain.ExpectCost;
import com.aaa.project.system.expectCost.mapper.ExpectCostMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 预算 服务层实现
 * 
 * @author aaa
 * @date 2019-04-22
 */
@Service
public class ExpectCostServiceImpl implements IExpectCostService 
{
	@Autowired
	private ExpectCostMapper expectCostMapper;

	/**
     * 查询预算信息
     * 
     * @param id 预算ID
     * @return 预算信息
     */
    @Override
	public ExpectCost selectExpectCostById(Integer id)
	{
	    return expectCostMapper.selectExpectCostById(id);
	}
	
	/**
     * 查询预算列表
     * 
     * @param expectCost 预算信息
     * @return 预算集合
     */
	@Override
	public List<ExpectCost> selectExpectCostList(ExpectCost expectCost)
	{
	    return expectCostMapper.selectExpectCostList(expectCost);
	}
	
    /**
     * 新增预算
     * 
     * @param expectCost 预算信息
     * @return 结果
     */
	@Override
	public int insertExpectCost(ExpectCost expectCost)
	{
	    return expectCostMapper.insertExpectCost(expectCost);
	}
	
	/**
     * 修改预算
     * 
     * @param expectCost 预算信息
     * @return 结果
     */
	@Override
	public int updateExpectCost(ExpectCost expectCost)
	{
	    return expectCostMapper.updateExpectCost(expectCost);
	}

	/**
     * 删除预算对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteExpectCostByIds(String ids)
	{
		return expectCostMapper.deleteExpectCostByIds(Convert.toStrArray(ids));
	}

	/**
	 * 根据编号查找对应的描述
	 * @param id 编号
	 * @return 描述
	 */
	@Override
	public String selectExpectCostNameById(Integer id){return expectCostMapper.selectExpectCostNameById(id);};

	/**
	 * 查询所有的预算
	 * @return 预算集合
	 */
	public List<ExpectCost> selectAllExpect(){return expectCostMapper.selectAllExpect();};
	
}
