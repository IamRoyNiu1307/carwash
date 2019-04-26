package com.aaa.project.system.userLocation.service;

import com.aaa.project.system.userLocation.domain.UserLocation;
import java.util.List;

/**
 * 洗车员定位 服务层
 * 
 * @author aaa
 * @date 2019-04-26
 */
public interface IUserLocationService 
{
	/**
     * 查询洗车员定位信息
     * 
     * @param id 洗车员定位ID
     * @return 洗车员定位信息
     */
	public UserLocation selectUserLocationById(Integer id);
	
	/**
     * 查询洗车员定位列表
     * 
     * @param userLocation 洗车员定位信息
     * @return 洗车员定位集合
     */
	public List<UserLocation> selectUserLocationList(UserLocation userLocation);
	
	/**
     * 新增洗车员定位
     * 
     * @param userLocation 洗车员定位信息
     * @return 结果
     */
	public int insertUserLocation(UserLocation userLocation);
	
	/**
     * 修改洗车员定位
     * 
     * @param userLocation 洗车员定位信息
     * @return 结果
     */
	public int updateUserLocation(UserLocation userLocation);
		
	/**
     * 删除洗车员定位信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteUserLocationByIds(String ids);
	
}
