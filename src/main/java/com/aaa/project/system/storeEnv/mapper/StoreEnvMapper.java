package com.aaa.project.system.storeEnv.mapper;

import com.aaa.project.system.storeEnv.domain.StoreEnv;
import java.util.List;	

/**
 * 门店环境 数据层
 * 
 * @author aaa
 * @date 2019-04-18
 */
public interface StoreEnvMapper 
{
	/**
     * 查询门店环境信息
     * 
     * @param id 门店环境ID
     * @return 门店环境信息
     */
	public StoreEnv selectStoreEnvById(Integer id);
	
	/**
     * 查询门店环境列表
     * 
     * @param storeEnv 门店环境信息
     * @return 门店环境集合
     */
	public List<StoreEnv> selectStoreEnvList(StoreEnv storeEnv);
	
	/**
     * 新增门店环境
     * 
     * @param storeEnv 门店环境信息
     * @return 结果
     */
	public int insertStoreEnv(StoreEnv storeEnv);
	
	/**
     * 修改门店环境
     * 
     * @param storeEnv 门店环境信息
     * @return 结果
     */
	public int updateStoreEnv(StoreEnv storeEnv);
	
	/**
     * 删除门店环境
     * 
     * @param id 门店环境ID
     * @return 结果
     */
	public int deleteStoreEnvById(Integer id);
	
	/**
     * 批量删除门店环境
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteStoreEnvByIds(String[] ids);

	/**
	 * 根据storeid查询该门店的环境实体类
	 * @param storeId
	 * @return
	 */
	List<StoreEnv> selectStoreEnvByStoreId(String storeId);


}