package com.aaa.project.system.userLocation.service;

import java.util.List;

import cn.hutool.core.date.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.userLocation.mapper.UserLocationMapper;
import com.aaa.project.system.userLocation.domain.UserLocation;
import com.aaa.project.system.userLocation.service.IUserLocationService;
import com.aaa.common.support.Convert;

import static com.aaa.project.myconst.MyConst.MAX_INTERVAL;

/**
 * 洗车员定位 服务层实现
 * 
 * @author aaa
 * @date 2019-04-26
 */
@Service
public class UserLocationServiceImpl implements IUserLocationService 
{
	@Autowired
	private UserLocationMapper userLocationMapper;

	/**
     * 查询洗车员定位信息
     * 
     * @param id 洗车员定位ID
     * @return 洗车员定位信息
     */
    @Override
	public UserLocation selectUserLocationById(Integer id)
	{
	    return userLocationMapper.selectUserLocationById(id);
	}
	
	/**
     * 查询洗车员定位列表
     * 
     * @param userLocation 洗车员定位信息
     * @return 洗车员定位集合
     */
	@Override
	public List<UserLocation> selectUserLocationList(UserLocation userLocation)
	{
	    return userLocationMapper.selectUserLocationList(userLocation);
	}
	
    /**
     * 新增洗车员定位
     * 
     * @param userLocation 洗车员定位信息
     * @return 结果
     */
	@Override
	public int insertUserLocation(UserLocation userLocation)
	{
	    return userLocationMapper.insertUserLocation(userLocation);
	}
	
	/**
     * 修改洗车员定位
     * 
     * @param userLocation 洗车员定位信息
     * @return 结果
     */
	@Override
	public int updateUserLocation(UserLocation userLocation)
	{
	    return userLocationMapper.updateUserLocation(userLocation);
	}

	/**
     * 删除洗车员定位对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteUserLocationByIds(String ids)
	{
		return userLocationMapper.deleteUserLocationByIds(Convert.toStrArray(ids));
	}

	/**
	 * 获取洗车员最新定位
	 * @param userAccount 洗车员账号
	 * @return 定位
	 */
	@Override
	public UserLocation selectLastLocationByUserAccount(String userAccount) {
		UserLocation userLocation = userLocationMapper.selectLastLocationByUserAccount(userAccount);
		long interval = DateUtil.currentSeconds()-userLocation.getUpdateDatetime().getTime();

		return interval<=MAX_INTERVAL?userLocation:null;
	}
}
