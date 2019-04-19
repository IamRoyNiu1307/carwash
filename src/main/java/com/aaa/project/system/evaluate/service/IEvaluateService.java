package com.aaa.project.system.evaluate.service;

import com.aaa.project.system.evaluate.domain.Evaluate;
import java.util.List;

/**
 * 评价 服务层
 * 
 * @author aaa
 * @date 2019-04-19
 */
public interface IEvaluateService 
{
	/**
     * 查询评价信息
     * 
     * @param id 评价ID
     * @return 评价信息
     */
	public Evaluate selectEvaluateById(Integer id);
	
	/**
     * 查询评价列表
     * 
     * @param evaluate 评价信息
     * @return 评价集合
     */
	public List<Evaluate> selectEvaluateList(Evaluate evaluate);
	
	/**
     * 新增评价
     * 
     * @param evaluate 评价信息
     * @return 结果
     */
	public int insertEvaluate(Evaluate evaluate);
	
	/**
     * 修改评价
     * 
     * @param evaluate 评价信息
     * @return 结果
     */
	public int updateEvaluate(Evaluate evaluate);
		
	/**
     * 删除评价信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteEvaluateByIds(String ids);
	
}
