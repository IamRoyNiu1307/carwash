package com.aaa.project.system.evaluate.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.evaluate.mapper.EvaluateMapper;
import com.aaa.project.system.evaluate.domain.Evaluate;
import com.aaa.project.system.evaluate.service.IEvaluateService;
import com.aaa.common.support.Convert;

/**
 * 评价 服务层实现
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Service
public class EvaluateServiceImpl implements IEvaluateService 
{
	@Autowired
	private EvaluateMapper evaluateMapper;

	/**
     * 查询评价信息
     * 
     * @param id 评价ID
     * @return 评价信息
     */
    @Override
	public Evaluate selectEvaluateById(Integer id)
	{
	    return evaluateMapper.selectEvaluateById(id);
	}
	
	/**
     * 查询评价列表
     * 
     * @param evaluate 评价信息
     * @return 评价集合
     */
	@Override
	public List<Evaluate> selectEvaluateList(Evaluate evaluate)
	{
	    return evaluateMapper.selectEvaluateList(evaluate);
	}
	
    /**
     * 新增评价
     * 
     * @param evaluate 评价信息
     * @return 结果
     */
	@Override
	public int insertEvaluate(Evaluate evaluate)
	{
	    return evaluateMapper.insertEvaluate(evaluate);
	}
	
	/**
     * 修改评价
     * 
     * @param evaluate 评价信息
     * @return 结果
     */
	@Override
	public int updateEvaluate(Evaluate evaluate)
	{
	    return evaluateMapper.updateEvaluate(evaluate);
	}

	/**
     * 删除评价对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteEvaluateByIds(String ids)
	{
		return evaluateMapper.deleteEvaluateByIds(Convert.toStrArray(ids));
	}
	
}
