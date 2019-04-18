package com.aaa.project.system.storeEnv.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.storeEnv.mapper.StoreEnvMapper;
import com.aaa.project.system.storeEnv.domain.StoreEnv;
import com.aaa.project.system.storeEnv.service.IStoreEnvService;
import com.aaa.common.support.Convert;

/**
 * 门店环境 服务层实现
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Service
public class StoreEnvServiceImpl implements IStoreEnvService 
{
	@Autowired
	private StoreEnvMapper storeEnvMapper;

	/**
     * 查询门店环境信息
     * 
     * @param id 门店环境ID
     * @return 门店环境信息
     */
    @Override
	public StoreEnv selectStoreEnvById(Integer id)
	{
	    return storeEnvMapper.selectStoreEnvById(id);
	}
	
	/**
     * 查询门店环境列表
     * 
     * @param storeEnv 门店环境信息
     * @return 门店环境集合
     */
	@Override
	public List<StoreEnv> selectStoreEnvList(StoreEnv storeEnv)
	{
	    return storeEnvMapper.selectStoreEnvList(storeEnv);
	}
	
    /**
     * 新增门店环境
     * 
     * @param storeEnv 门店环境信息
     * @return 结果
     */
	@Override
	public int insertStoreEnv(StoreEnv storeEnv)
	{
	    return storeEnvMapper.insertStoreEnv(storeEnv);
	}
	
	/**
     * 修改门店环境
     * 
     * @param storeEnv 门店环境信息
     * @return 结果
     */
	@Override
	public int updateStoreEnv(StoreEnv storeEnv)
	{
	    return storeEnvMapper.updateStoreEnv(storeEnv);
	}

	/**
     * 删除门店环境对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteStoreEnvByIds(String ids)
	{
		return storeEnvMapper.deleteStoreEnvByIds(Convert.toStrArray(ids));
	}
	
}
