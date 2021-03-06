package com.aaa.project.system.carInfo.service;

import java.util.List;
import java.util.Map;

import com.aaa.common.utils.ReGeo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.carInfo.mapper.CarInfoMapper;
import com.aaa.project.system.carInfo.domain.CarInfo;
import com.aaa.project.system.carInfo.service.ICarInfoService;
import com.aaa.common.support.Convert;

/**
 * 车辆 服务层实现
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Service
public class CarInfoServiceImpl implements ICarInfoService 
{
	@Autowired
	private CarInfoMapper carInfoMapper;

	/**
     * 查询车辆信息
     * 
     * @param id 车辆ID
     * @return 车辆信息
     */
    @Override
	public CarInfo selectCarInfoById(Integer id)
	{
	    return carInfoMapper.selectCarInfoById(id);
	}

	/**
	 * 查询车辆信息
	 *
	 * @param consumerAccount 所属账号
	 * @return
	 */
	@Override
	public List<CarInfo> selectCarInfoByConsumerAccount(String consumerAccount) {
		List<CarInfo> carInfoList = carInfoMapper.selectCarInfoByConsumerAccount(consumerAccount);
		for(CarInfo each : carInfoList){
			Map map = ReGeo.reGeo(each.getCarAddrLng(), each.getCarAddrLat());
			if(map.get("formattedAddress")!=null){
				each.setCarAddr(map.get("formattedAddress").toString());
			}

		}
		return carInfoList;
	}

	/**
     * 查询车辆列表
     * 
     * @param carInfo 车辆信息
     * @return 车辆集合
     */
	@Override
	public List<CarInfo> selectCarInfoList(CarInfo carInfo)
	{
	    return carInfoMapper.selectCarInfoList(carInfo);
	}
	
    /**
     * 新增车辆
     * 
     * @param carInfo 车辆信息
     * @return 结果
     */
	@Override
	public int insertCarInfo(CarInfo carInfo)
	{
		if(carInfo.getCarDefault()){
			cleanDefaultCarInfo(carInfo.getOwnerAccount());
		}
	    return carInfoMapper.insertCarInfo(carInfo);
	}
	
	/**
     * 修改车辆
     * 
     * @param carInfo 车辆信息
     * @return 结果
     */
	@Override
	public int updateCarInfo(CarInfo carInfo)
	{
		if(carInfo.getCarDefault()){
			cleanDefaultCarInfo(carInfo.getOwnerAccount());
		}
	    return carInfoMapper.updateCarInfo(carInfo);
	}

	/**
     * 删除车辆对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteCarInfoByIds(String ids)
	{
		return carInfoMapper.deleteCarInfoByIds(Convert.toStrArray(ids));
	}

	@Override
	public void cleanDefaultCarInfo(String consumerAccount) {
		carInfoMapper.cleanDefaultCarInfo(consumerAccount);
	}

	/**
	 * 获取用户默认车辆信息
	 * @param consumerAccount 用户账号
	 * @return 默认车辆信息
	 */
	@Override
	public CarInfo selectDefaultCarInfoByAccount(String consumerAccount) {
		CarInfo carInfo = carInfoMapper.selectDefaultCarInfoByAccount(consumerAccount);
		Map map = ReGeo.reGeo(carInfo.getCarAddrLng(), carInfo.getCarAddrLat());
		if(map.get("formattedAddress")!=null){
			carInfo.setCarAddr(map.get("formattedAddress").toString());
		}

		return carInfo;
	}


}
