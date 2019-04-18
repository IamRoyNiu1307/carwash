package com.aaa.project.system.keyContainer.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.keyContainer.mapper.KeyContainerMapper;
import com.aaa.project.system.keyContainer.domain.KeyContainer;
import com.aaa.project.system.keyContainer.service.IKeyContainerService;
import com.aaa.common.support.Convert;

/**
 * 钥匙柜 服务层实现
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Service
public class KeyContainerServiceImpl implements IKeyContainerService 
{
	@Autowired
	private KeyContainerMapper keyContainerMapper;

	/**
     * 查询钥匙柜信息
     * 
     * @param id 钥匙柜ID
     * @return 钥匙柜信息
     */
    @Override
	public KeyContainer selectKeyContainerById(Integer id)
	{
	    return keyContainerMapper.selectKeyContainerById(id);
	}
	
	/**
     * 查询钥匙柜列表
     * 
     * @param keyContainer 钥匙柜信息
     * @return 钥匙柜集合
     */
	@Override
	public List<KeyContainer> selectKeyContainerList(KeyContainer keyContainer)
	{
	    return keyContainerMapper.selectKeyContainerList(keyContainer);
	}
	
    /**
     * 新增钥匙柜
     * 
     * @param keyContainer 钥匙柜信息
     * @return 结果
     */
	@Override
	public int insertKeyContainer(KeyContainer keyContainer)
	{
	    return keyContainerMapper.insertKeyContainer(keyContainer);
	}
	
	/**
     * 修改钥匙柜
     * 
     * @param keyContainer 钥匙柜信息
     * @return 结果
     */
	@Override
	public int updateKeyContainer(KeyContainer keyContainer)
	{
	    return keyContainerMapper.updateKeyContainer(keyContainer);
	}

	/**
     * 删除钥匙柜对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteKeyContainerByIds(String ids)
	{
		return keyContainerMapper.deleteKeyContainerByIds(Convert.toStrArray(ids));
	}

	/**
	 * 获取附近钥匙柜列表
	 * @param posLng 经度
	 * @param posLat 	纬度
	 * @return 附近钥匙柜列表
	 */
	@Override
	public List<KeyContainer> getAroundContainer(String posLng, String posLat) {
		return null;
	}
}
