package com.aaa.project.system.carInfo.mapper;

import com.aaa.project.system.carInfo.domain.CarInfo;
import java.util.List;	

/**
 * 车辆 数据层
 * 
 * @author aaa
 * @date 2019-04-18
 */
public interface CarInfoMapper 
{
	/**
     * 查询车辆信息
     * 
     * @param id 车辆ID
     * @return 车辆信息
     */
	public CarInfo selectCarInfoById(Integer id);

	/**
	 * 查询 车辆信息
	 * @param consumerAccount 所属账号
	 * @return 车辆信息
	 */
	public List<CarInfo> selectCarInfoByConsumerAccount(String consumerAccount);
	
	/**
     * 查询车辆列表
     * 
     * @param carInfo 车辆信息
     * @return 车辆集合
     */
	public List<CarInfo> selectCarInfoList(CarInfo carInfo);
	
	/**
     * 新增车辆
     * 
     * @param carInfo 车辆信息
     * @return 结果
     */
	public int insertCarInfo(CarInfo carInfo);
	
	/**
     * 修改车辆
     * 
     * @param carInfo 车辆信息
     * @return 结果
     */
	public int updateCarInfo(CarInfo carInfo);
	
	/**
     * 删除车辆
     * 
     * @param id 车辆ID
     * @return 结果
     */
	public int deleteCarInfoById(Integer id);
	
	/**
     * 批量删除车辆
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteCarInfoByIds(String[] ids);
	
}