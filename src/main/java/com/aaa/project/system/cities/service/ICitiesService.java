package com.aaa.project.system.cities.service;

import com.aaa.project.system.cities.domain.Cities;
import java.util.List;

/**
 * 城市 服务层
 * 
 * @author aaa
 * @date 2019-04-18
 */
public interface ICitiesService 
{
	/**
     * 查询城市信息
     * 
     * @param id 城市ID
     * @return 城市信息
     */
	public Cities selectCitiesById(Integer id);
	
	/**
     * 查询城市列表
     * 
     * @param cities 城市信息
     * @return 城市集合
     */
	public List<Cities> selectCitiesList(Cities cities);
	
	/**
     * 新增城市
     * 
     * @param cities 城市信息
     * @return 结果
     */
	public int insertCities(Cities cities);
	
	/**
     * 修改城市
     * 
     * @param cities 城市信息
     * @return 结果
     */
	public int updateCities(Cities cities);
		
	/**
     * 删除城市信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteCitiesByIds(String ids);
	
}
