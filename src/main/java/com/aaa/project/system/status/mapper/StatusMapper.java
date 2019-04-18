package com.aaa.project.system.status.mapper;

import com.aaa.project.system.status.domain.Status;
import java.util.List;	

/**
 * 状态 数据层
 * 
 * @author aaa
 * @date 2019-04-18
 */
public interface StatusMapper 
{
	/**
     * 查询状态信息
     * 
     * @param id 状态ID
     * @return 状态信息
     */
	public Status selectStatusById(Integer id);
	
	/**
     * 查询状态列表
     * 
     * @param status 状态信息
     * @return 状态集合
     */
	public List<Status> selectStatusList(Status status);
	
	/**
     * 新增状态
     * 
     * @param status 状态信息
     * @return 结果
     */
	public int insertStatus(Status status);
	
	/**
     * 修改状态
     * 
     * @param status 状态信息
     * @return 结果
     */
	public int updateStatus(Status status);
	
	/**
     * 删除状态
     * 
     * @param id 状态ID
     * @return 结果
     */
	public int deleteStatusById(Integer id);
	
	/**
     * 批量删除状态
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteStatusByIds(String[] ids);
	
}