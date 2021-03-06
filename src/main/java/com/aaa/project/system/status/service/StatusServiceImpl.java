package com.aaa.project.system.status.service;

import com.aaa.common.support.Convert;
import com.aaa.project.system.status.domain.Status;
import com.aaa.project.system.status.mapper.StatusMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 状态 服务层实现
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Service
public class StatusServiceImpl implements IStatusService 
{
	@Autowired
	private StatusMapper statusMapper;

	/**
     * 查询状态信息
     * 
     * @param id 状态ID
     * @return 状态信息
     */
    @Override
	public Status selectStatusById(Integer id)
	{
	    return statusMapper.selectStatusById(id);
	}
	
	/**
     * 查询状态列表
     * 
     * @param status 状态信息
     * @return 状态集合
     */
	@Override
	public List<Status> selectStatusList(Status status)
	{
	    return statusMapper.selectStatusList(status);
	}

	/**
	 * 查询服务的状态列表
	 * @return 状态集合
	 */
	@Override
	public List<Status> selectServicesStatusList() {
		return statusMapper.selectServicesStatusList();
	}

	/**
     * 新增状态
     * 
     * @param status 状态信息
     * @return 结果
     */
	@Override
	public int insertStatus(Status status)
	{
	    return statusMapper.insertStatus(status);
	}
	
	/**
     * 修改状态
     * 
     * @param status 状态信息
     * @return 结果
     */
	@Override
	public int updateStatus(Status status)
	{
	    return statusMapper.updateStatus(status);
	}

	/**
     * 删除状态对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteStatusByIds(String ids)
	{
		return statusMapper.deleteStatusByIds(Convert.toStrArray(ids));
	}

	/**
	 * 根据id查询状态名称
	 * @param id 状态ID
	 * @return 状态名称
	 */
	@Override
	public String selectStatusNameById(Integer id){return statusMapper.selectStatusNameById(id);};

	/**
	 * 查询所有的钥匙状态信息
	 * @return 钥匙信息集合
	 */
	@Override
	public List<Status> selectAllKeyStatus(){return statusMapper.selectAllKeyStatus();};

	/**
	 * 查询所有订单状态信息
	 * @return 订单信息集合
	 */
	@Override
	public List<Status> selectAllOrderStatus(){return statusMapper.selectAllOrderStatus();};
}
