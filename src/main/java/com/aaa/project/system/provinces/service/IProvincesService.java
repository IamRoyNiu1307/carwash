package com.aaa.project.system.provinces.service;

import com.aaa.project.system.provinces.domain.Provinces;
import java.util.List;

/**
 * 省份 服务层
 * 
 * @author aaa
 * @date 2019-05-09
 */
public interface IProvincesService 
{
	/**
     * 查询省份信息
     * 
     * @param id 省份ID
     * @return 省份信息
     */
	public Provinces selectProvincesById(Integer id);
	
	/**
     * 查询省份列表
     * 
     * @param provinces 省份信息
     * @return 省份集合
     */
	public List<Provinces> selectProvincesList(Provinces provinces);
	
	/**
     * 新增省份
     * 
     * @param provinces 省份信息
     * @return 结果
     */
	public int insertProvinces(Provinces provinces);
	
	/**
     * 修改省份
     * 
     * @param provinces 省份信息
     * @return 结果
     */
	public int updateProvinces(Provinces provinces);
		
	/**
     * 删除省份信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteProvincesByIds(String ids);
	
}
