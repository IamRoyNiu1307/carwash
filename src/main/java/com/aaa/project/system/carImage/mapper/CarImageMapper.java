package com.aaa.project.system.carImage.mapper;

import com.aaa.project.system.carImage.domain.CarImage;
import java.util.List;	

/**
 * 汽车图片 数据层
 * 
 * @author aaa
 * @date 2019-04-19
 */
public interface CarImageMapper 
{
	/**
     * 查询汽车图片信息
     * 
     * @param id 汽车图片ID
     * @return 汽车图片信息
     */
	public CarImage selectCarImageById(Integer id);
	
	/**
     * 查询汽车图片列表
     * 
     * @param carImage 汽车图片信息
     * @return 汽车图片集合
     */
	public List<CarImage> selectCarImageList(CarImage carImage);
	
	/**
     * 新增汽车图片
     * 
     * @param carImage 汽车图片信息
     * @return 结果
     */
	public int insertCarImage(CarImage carImage);
	
	/**
     * 修改汽车图片
     * 
     * @param carImage 汽车图片信息
     * @return 结果
     */
	public int updateCarImage(CarImage carImage);
	
	/**
     * 删除汽车图片
     * 
     * @param id 汽车图片ID
     * @return 结果
     */
	public int deleteCarImageById(Integer id);
	
	/**
     * 批量删除汽车图片
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteCarImageByIds(String[] ids);
	
}