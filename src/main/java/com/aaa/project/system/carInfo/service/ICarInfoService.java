package com.aaa.project.system.carInfo.service;

import com.aaa.project.system.carInfo.domain.CarInfo;
import java.util.List;

/**
 * 车辆 服务层
 * 
 * @author aaa
 * @date 2019-04-18
 */
public interface ICarInfoService 
{
	/**
     * 查询车辆信息
     * 
     * @param id 车辆ID
     * @return 车辆信息
     */
	public CarInfo selectCarInfoById(Integer id);
	
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
     * 删除车辆信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteCarInfoByIds(String ids);
	
}
