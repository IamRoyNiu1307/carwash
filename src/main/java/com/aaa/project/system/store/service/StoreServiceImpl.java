package com.aaa.project.system.store.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.store.mapper.StoreMapper;
import com.aaa.project.system.store.domain.Store;
import com.aaa.project.system.store.service.IStoreService;
import com.aaa.common.support.Convert;

/**
 * 门店 服务层实现
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Service
public class StoreServiceImpl implements IStoreService 
{
	@Autowired
	private StoreMapper storeMapper;

	/**
     * 查询门店信息
     * 
     * @param id 门店ID
     * @return 门店信息
     */
    @Override
	public Store selectStoreById(Integer id)
	{
	    return storeMapper.selectStoreById(id);
	}
	
	/**
     * 查询门店列表
     * 
     * @param store 门店信息
     * @return 门店集合
     */
	@Override
	public List<Store> selectStoreList(Store store)
	{
	    return storeMapper.selectStoreList(store);
	}
	
    /**
     * 新增门店
     * 
     * @param store 门店信息
     * @return 结果
     */
	@Override
	public int insertStore(Store store)
	{
	    return storeMapper.insertStore(store);
	}
	
	/**
     * 修改门店
     * 
     * @param store 门店信息
     * @return 结果
     */
	@Override
	public int updateStore(Store store)
	{
	    return storeMapper.updateStore(store);
	}

	/**
     * 删除门店对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteStoreByIds(String ids)
	{
		return storeMapper.deleteStoreByIds(Convert.toStrArray(ids));
	}
	
}
