package com.aaa.project.system.model.mapper;

import com.aaa.project.system.model.domain.Model;
import java.util.List;	

/**
 * 模式 数据层
 * 
 * @author aaa
 * @date 2019-04-22
 */
public interface ModelMapper 
{
	/**
     * 查询模式信息
     * 
     * @param id 模式ID
     * @return 模式信息
     */
	public Model selectModelById(Integer id);
	
	/**
     * 查询模式列表
     * 
     * @param model 模式信息
     * @return 模式集合
     */
	public List<Model> selectModelList(Model model);
	
	/**
     * 新增模式
     * 
     * @param model 模式信息
     * @return 结果
     */
	public int insertModel(Model model);
	
	/**
     * 修改模式
     * 
     * @param model 模式信息
     * @return 结果
     */
	public int updateModel(Model model);
	
	/**
     * 删除模式
     * 
     * @param id 模式ID
     * @return 结果
     */
	public int deleteModelById(Integer id);
	
	/**
     * 批量删除模式
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteModelByIds(String[] ids);

	/**
	 * 根据id查询模式名称
	 * @param id 模式id
	 * @return 模式名称
	 */
	public String selectModelNameById(Integer id);

	/**
	 * 查询所有模式信息
	 * @return 模式信息集合
	 */
	public List<Model> selectAllModel();
	
}