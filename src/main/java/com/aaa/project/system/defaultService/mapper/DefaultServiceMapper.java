package com.aaa.project.system.defaultService.mapper;

import com.aaa.project.system.defaultService.domain.DefaultService;
import java.util.List;	

/**
 * 默认业务 数据层
 * 
 * @author aaa
 * @date 2019-04-19
 */
public interface DefaultServiceMapper 
{
	/**
     * 查询默认业务信息
     * 
     * @param id 默认业务ID
     * @return 默认业务信息
     */
	public DefaultService selectDefaultServiceById(Integer id);
	
	/**
     * 查询默认业务列表
     * 
     * @param defaultService 默认业务信息
     * @return 默认业务集合
     */
	public List<DefaultService> selectDefaultServiceList(DefaultService defaultService);

	/**
	 * 查询默认业务列表
	 *
	 * @param defaultServiceList 默认业务信息
	 * @return 默认业务集合
	 */
	public List<DefaultService> selectDefaultService();
	
	/**
     * 新增默认业务
     * 
     * @param defaultService 默认业务信息
     * @return 结果
     */
	public int insertDefaultService(DefaultService defaultService);
	
	/**
     * 修改默认业务
     * 
     * @param defaultService 默认业务信息
     * @return 结果
     */
	public int updateDefaultService(DefaultService defaultService);
	
	/**
     * 删除默认业务
     * 
     * @param id 默认业务ID
     * @return 结果
     */
	public int deleteDefaultServiceById(Integer id);
	
	/**
     * 批量删除默认业务
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteDefaultServiceByIds(String[] ids);
	
}