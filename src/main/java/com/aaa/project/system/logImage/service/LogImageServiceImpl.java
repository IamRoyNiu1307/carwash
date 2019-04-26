package com.aaa.project.system.logImage.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.logImage.mapper.LogImageMapper;
import com.aaa.project.system.logImage.domain.LogImage;
import com.aaa.project.system.logImage.service.ILogImageService;
import com.aaa.common.support.Convert;

/**
 * 日志图片 服务层实现
 * 
 * @author aaa
 * @date 2019-04-26
 */
@Service
public class LogImageServiceImpl implements ILogImageService 
{
	@Autowired
	private LogImageMapper logImageMapper;

	/**
     * 查询日志图片信息
     * 
     * @param id 日志图片ID
     * @return 日志图片信息
     */
    @Override
	public LogImage selectLogImageById(Integer id)
	{
	    return logImageMapper.selectLogImageById(id);
	}
	
	/**
     * 查询日志图片列表
     * 
     * @param logImage 日志图片信息
     * @return 日志图片集合
     */
	@Override
	public List<LogImage> selectLogImageList(LogImage logImage)
	{
	    return logImageMapper.selectLogImageList(logImage);
	}
	
    /**
     * 新增日志图片
     * 
     * @param logImage 日志图片信息
     * @return 结果
     */
	@Override
	public int insertLogImage(LogImage logImage)
	{
	    return logImageMapper.insertLogImage(logImage);
	}
	
	/**
     * 修改日志图片
     * 
     * @param logImage 日志图片信息
     * @return 结果
     */
	@Override
	public int updateLogImage(LogImage logImage)
	{
	    return logImageMapper.updateLogImage(logImage);
	}

	/**
     * 删除日志图片对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteLogImageByIds(String ids)
	{
		return logImageMapper.deleteLogImageByIds(Convert.toStrArray(ids));
	}
	
}
