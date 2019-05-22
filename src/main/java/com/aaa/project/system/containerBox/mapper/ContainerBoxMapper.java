package com.aaa.project.system.containerBox.mapper;

import com.aaa.project.system.containerBox.domain.ContainerBox;

import java.util.List;

/**
 * 货柜格子 数据层
 * 
 * @author aaa
 * @date 2019-05-06
 */
public interface ContainerBoxMapper 
{
	/**
     * 查询货柜格子信息
     * 
     * @param id 货柜格子ID
     * @return 货柜格子信息
     */
	public ContainerBox selectContainerBoxById(Integer id);
	
	/**
     * 查询货柜格子列表
     * 
     * @param containerBox 货柜格子信息
     * @return 货柜格子集合
     */
	public List<ContainerBox> selectContainerBoxList(ContainerBox containerBox);
	
	/**
     * 新增货柜格子
     * 
     * @param containerBox 货柜格子信息
     * @return 结果
     */
	public int insertContainerBox(ContainerBox containerBox);
	
	/**
     * 修改货柜格子
     * 
     * @param containerBox 货柜格子信息
     * @return 结果
     */
	public int updateContainerBox(ContainerBox containerBox);
	
	/**
     * 删除货柜格子
     * 
     * @param id 货柜格子ID
     * @return 结果
     */
	public int deleteContainerBoxById(Integer id);
	
	/**
     * 批量删除货柜格子
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteContainerBoxByIds(String[] ids);

	/**
	 * 查找空格子
	 * @param uuid uuid
	 * @return 空格子对象
	 */
    ContainerBox findFreeBox(String uuid);

    ContainerBox selectOpenBox(String uuid);
}