package com.aaa.project.system.store.mapper;

import com.aaa.project.system.store.domain.Store;
import java.util.List;	

/**
 * 门店 数据层
 * 
 * @author aaa
 * @date 2019-04-18
 */
public interface StoreMapper 
{
	/**
     * 查询门店信息
     * 
     * @param id 门店ID
     * @return 门店信息
     */
	public Store selectStoreById(Integer id);
	
	/**
     * 查询门店列表
     * 
     * @param store 门店信息
     * @return 门店集合
     */
	public List<Store> selectStoreList(Store store);
	
	/**
     * 新增门店
     * 
     * @param store 门店信息
     * @return 结果
     */
	public int insertStore(Store store);
	
	/**
     * 修改门店
     * 
     * @param store 门店信息
     * @return 结果
     */
	public int updateStore(Store store);
	
	/**
     * 删除门店
     * 
     * @param id 门店ID
     * @return 结果
     */
	public int deleteStoreById(Integer id);
	
	/**
     * 批量删除门店
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteStoreByIds(String[] ids);
	
}