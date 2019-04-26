package com.aaa.project.system.storeService.service;

import java.util.List;

import com.aaa.project.system.defaultService.domain.DefaultService;
import com.aaa.project.system.defaultService.mapper.DefaultServiceMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.storeService.mapper.StoreServiceMapper;
import com.aaa.project.system.storeService.domain.StoreService;
import com.aaa.project.system.storeService.service.IStoreServiceService;
import com.aaa.common.support.Convert;

/**
 * 业务 服务层实现
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Service
public class StoreServiceServiceImpl implements IStoreServiceService 
{
	@Autowired
	private StoreServiceMapper storeServiceMapper;
	@Autowired
	private DefaultServiceMapper defaultServiceMapper;

	/**
     * 查询业务信息
     * 
     * @param id 业务ID
     * @return 业务信息
     */
    @Override
	public StoreService selectStoreServiceById(Integer id)
	{
	    return storeServiceMapper.selectStoreServiceById(id);
	}

	/**
     * 查询业务列表
     * 
     * @param storeService 业务信息
     * @return 业务集合
     */
	@Override
	public List<StoreService> selectStoreServiceList(StoreService storeService)
	{
	    return storeServiceMapper.selectStoreServiceList(storeService);
	}

	/**
	 *
	 * @param storeId 店铺id
	 * @param defaultServiceId 服务id
	 * @return 花费
	 */
	@Override
	public float selectCost(@Param("storeId") String storeId,@Param("defaultServiceId") Integer defaultServiceId) {
		return storeServiceMapper.selectCost(storeId,defaultServiceId);
	}

	/**
     * 新增业务
     * 
     * @param storeService 业务信息
     * @return 结果
     */
	@Override
	public int insertStoreService(StoreService storeService)
	{
	    return storeServiceMapper.insertStoreService(storeService);
	}
	
	/**
     * 修改业务
     * 
     * @param storeService 业务信息
     * @return 结果
     */
	@Override
	public int updateStoreService(StoreService storeService)
	{
	    return storeServiceMapper.updateStoreService(storeService);
	}

	/**
     * 删除业务对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteStoreServiceByIds(String ids)
	{
		return storeServiceMapper.deleteStoreServiceByIds(Convert.toStrArray(ids));
	}

	@Override
	public List selectStoreServiceByStoreId(String storeId) {
		if("".equals(storeId)){
			return defaultServiceMapper.selectDefaultService();
		}else {
			return storeServiceMapper.selectStoreServiceByStoreId(storeId);
		}

	}

	/**
	 *  订单服务列表
	 * @param storeId 门店id
	 * @param list 服务id表
	 * @return 服务列表
	 */
	@Override
	public List<StoreService> selectOrderService(String storeId, String orderId) {
		return storeServiceMapper.selectOrderService(storeId,orderId);
	}

}
