package com.aaa.project.system.keyInfo.mapper;

import com.aaa.project.system.keyInfo.domain.KeyInfo;
import java.util.List;	

/**
 * 钥匙 数据层
 * 
 * @author aaa
 * @date 2019-04-19
 */
public interface KeyInfoMapper 
{
	/**
     * 查询钥匙信息
     * 
     * @param id 钥匙ID
     * @return 钥匙信息
     */
	public KeyInfo selectKeyInfoById(Integer id);
	
	/**
     * 查询钥匙列表
     * 
     * @param keyInfo 钥匙信息
     * @return 钥匙集合
     */
	public List<KeyInfo> selectKeyInfoList(KeyInfo keyInfo);
	
	/**
     * 新增钥匙
     * 
     * @param keyInfo 钥匙信息
     * @return 结果
     */
	public int insertKeyInfo(KeyInfo keyInfo);
	
	/**
     * 修改钥匙
     * 
     * @param keyInfo 钥匙信息
     * @return 结果
     */
	public int updateKeyInfo(KeyInfo keyInfo);
	
	/**
     * 删除钥匙
     * 
     * @param id 钥匙ID
     * @return 结果
     */
	public int deleteKeyInfoById(Integer id);
	
	/**
     * 批量删除钥匙
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteKeyInfoByIds(String[] ids);
	
}