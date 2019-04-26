package com.aaa.project.system.logImage.mapper;

import com.aaa.project.system.logImage.domain.LogImage;
import java.util.List;	

/**
 * 日志图片 数据层
 * 
 * @author aaa
 * @date 2019-04-26
 */
public interface LogImageMapper 
{
	/**
     * 查询日志图片信息
     * 
     * @param id 日志图片ID
     * @return 日志图片信息
     */
	public LogImage selectLogImageById(Integer id);
	
	/**
     * 查询日志图片列表
     * 
     * @param logImage 日志图片信息
     * @return 日志图片集合
     */
	public List<LogImage> selectLogImageList(LogImage logImage);
	
	/**
     * 新增日志图片
     * 
     * @param logImage 日志图片信息
     * @return 结果
     */
	public int insertLogImage(LogImage logImage);
	
	/**
     * 修改日志图片
     * 
     * @param logImage 日志图片信息
     * @return 结果
     */
	public int updateLogImage(LogImage logImage);
	
	/**
     * 删除日志图片
     * 
     * @param id 日志图片ID
     * @return 结果
     */
	public int deleteLogImageById(Integer id);
	
	/**
     * 批量删除日志图片
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteLogImageByIds(String[] ids);
	
}