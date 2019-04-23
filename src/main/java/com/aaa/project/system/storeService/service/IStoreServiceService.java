package com.aaa.project.system.storeService.service;

import com.aaa.project.system.storeService.domain.StoreService;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 业务 服务层
 * 
 * @author aaa
 * @date 2019-04-19
 */
public interface IStoreServiceService 
{
	/**
     * 查询业务信息
     * 
     * @param id 业务ID
     * @return 业务信息
     */
	public StoreService selectStoreServiceById(Integer id);
	
	/**
     * 查询业务列表
     * 
     * @param storeService 业务信息
     * @return 业务集合
     */
	public List<StoreService> selectStoreServiceList(StoreService storeService);

	/**
	 * 查询价钱
	 * @param storeId 店铺id
	 * @param defaultServiceId 服务id
	 * @return 花费
	 */
	public float selectCost(@Param("storeId") String storeId, @Param("defaultServiceId") Integer defaultServiceId);

	/**
     * 新增业务
     * 
     * @param storeService 业务信息
     * @return 结果
     */
	public int insertStoreService(StoreService storeService);
	
	/**
     * 修改业务
     * 
     * @param storeService 业务信息
     * @return 结果
     */
	public int updateStoreService(StoreService storeService);
		
	/**
     * 删除业务信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteStoreServiceByIds(String ids);

	/**
	 * 查找信息
	 *
	 * @param storeId 业务ID
	 * @return 业务信息
	 */
	public List<StoreService> selectStoreServiceByStoreId(String storeId);
	
}
