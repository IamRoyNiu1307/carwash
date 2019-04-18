package com.aaa.project.system.cities.mapper;

import com.aaa.project.system.cities.domain.Cities;

import java.util.List;

/**
 * 城市 数据层
 *
 * @author aaa
 * @date 2019-04-18
 */
public interface CitiesMapper {
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
     * 删除城市
     *
     * @param id 城市ID
     * @return 结果
     */
    public int deleteCitiesById(Integer id);

    /**
     * 批量删除城市
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteCitiesByIds(String[] ids);

    /**
     * 根据城市名称查询到城市所有信息
     *
     * @param cityName 城市名称
     * @return 结果
     */

    public Cities selectCityInfoByCity(String cityName);

}