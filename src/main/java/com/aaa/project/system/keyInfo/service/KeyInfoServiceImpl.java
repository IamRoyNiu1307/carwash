package com.aaa.project.system.keyInfo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.keyInfo.mapper.KeyInfoMapper;
import com.aaa.project.system.keyInfo.domain.KeyInfo;
import com.aaa.project.system.keyInfo.service.IKeyInfoService;
import com.aaa.common.support.Convert;

/**
 * 钥匙 服务层实现
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Service
public class KeyInfoServiceImpl implements IKeyInfoService 
{
	@Autowired
	private KeyInfoMapper keyInfoMapper;

	/**
     * 查询钥匙信息
     * 
     * @param id 钥匙ID
     * @return 钥匙信息
     */
    @Override
	public KeyInfo selectKeyInfoById(Integer id)
	{
	    return keyInfoMapper.selectKeyInfoById(id);
	}
	
	/**
     * 查询钥匙列表
     * 
     * @param keyInfo 钥匙信息
     * @return 钥匙集合
     */
	@Override
	public List<KeyInfo> selectKeyInfoList(KeyInfo keyInfo)
	{
	    return keyInfoMapper.selectKeyInfoList(keyInfo);
	}
	
    /**
     * 新增钥匙
     * 
     * @param keyInfo 钥匙信息
     * @return 结果
     */
	@Override
	public int insertKeyInfo(KeyInfo keyInfo)
	{
	    return keyInfoMapper.insertKeyInfo(keyInfo);
	}
	
	/**
     * 修改钥匙
     * 
     * @param keyInfo 钥匙信息
     * @return 结果
     */
	@Override
	public int updateKeyInfo(KeyInfo keyInfo)
	{
	    return keyInfoMapper.updateKeyInfo(keyInfo);
	}

	/**
     * 删除钥匙对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteKeyInfoByIds(String ids)
	{
		return keyInfoMapper.deleteKeyInfoByIds(Convert.toStrArray(ids));
	}
	
}
