package com.aaa.project.system.defaultService.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.defaultService.mapper.DefaultServiceMapper;
import com.aaa.project.system.defaultService.domain.DefaultService;
import com.aaa.project.system.defaultService.service.IDefaultServiceService;
import com.aaa.common.support.Convert;

/**
 * 默认业务 服务层实现
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Service
public class DefaultServiceServiceImpl implements IDefaultServiceService 
{
	@Autowired
	private DefaultServiceMapper defaultServiceMapper;

	/**
     * 查询默认业务信息
     * 
     * @param id 默认业务ID
     * @return 默认业务信息
     */
    @Override
	public DefaultService selectDefaultServiceById(Integer id)
	{
	    return defaultServiceMapper.selectDefaultServiceById(id);
	}
	
	/**
     * 查询默认业务列表
     * 
     * @param defaultService 默认业务信息
     * @return 默认业务集合
     */
	@Override
	public List<DefaultService> selectDefaultServiceList(DefaultService defaultService)
	{
	    return defaultServiceMapper.selectDefaultServiceList(defaultService);
	}

	/**
	 * 查询默认业务列表
	 *
	 * @param defaultService 默认业务信息
	 * @return 默认业务集合
	 */
	@Override
	public List<DefaultService> selectDefaultService() {
		return defaultServiceMapper.selectDefaultService();
	}

	/**
	 * 订单服务
	 * @param list 服务id list
	 * @return 订单服务
	 */
	@Override
	public List<DefaultService> selectBylist(String orderId) {
		return defaultServiceMapper.selectBylist(orderId);
	}


	/**
     * 新增默认业务
     * 
     * @param defaultService 默认业务信息
     * @return 结果
     */
	@Override
	public int insertDefaultService(DefaultService defaultService)
	{
	    return defaultServiceMapper.insertDefaultService(defaultService);
	}
	
	/**
     * 修改默认业务
     * 
     * @param defaultService 默认业务信息
     * @return 结果
     */
	@Override
	public int updateDefaultService(DefaultService defaultService)
	{
	    return defaultServiceMapper.updateDefaultService(defaultService);
	}

	/**
     * 删除默认业务对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteDefaultServiceByIds(String ids)
	{
		return defaultServiceMapper.deleteDefaultServiceByIds(Convert.toStrArray(ids));
	}
	
}
