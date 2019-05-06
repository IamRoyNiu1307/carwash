package com.aaa.project.system.containerBox.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.containerBox.mapper.ContainerBoxMapper;
import com.aaa.project.system.containerBox.domain.ContainerBox;
import com.aaa.project.system.containerBox.service.IContainerBoxService;
import com.aaa.common.support.Convert;

/**
 * 货柜格子 服务层实现
 * 
 * @author aaa
 * @date 2019-05-06
 */
@Service
public class ContainerBoxServiceImpl implements IContainerBoxService 
{
	@Autowired
	private ContainerBoxMapper containerBoxMapper;

	/**
     * 查询货柜格子信息
     * 
     * @param id 货柜格子ID
     * @return 货柜格子信息
     */
    @Override
	public ContainerBox selectContainerBoxById(Integer id)
	{
	    return containerBoxMapper.selectContainerBoxById(id);
	}
	
	/**
     * 查询货柜格子列表
     * 
     * @param containerBox 货柜格子信息
     * @return 货柜格子集合
     */
	@Override
	public List<ContainerBox> selectContainerBoxList(ContainerBox containerBox)
	{
	    return containerBoxMapper.selectContainerBoxList(containerBox);
	}
	
    /**
     * 新增货柜格子
     * 
     * @param containerBox 货柜格子信息
     * @return 结果
     */
	@Override
	public int insertContainerBox(ContainerBox containerBox)
	{
	    return containerBoxMapper.insertContainerBox(containerBox);
	}
	
	/**
     * 修改货柜格子
     * 
     * @param containerBox 货柜格子信息
     * @return 结果
     */
	@Override
	public int updateContainerBox(ContainerBox containerBox)
	{
	    return containerBoxMapper.updateContainerBox(containerBox);
	}

	/**
     * 删除货柜格子对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteContainerBoxByIds(String ids)
	{
		return containerBoxMapper.deleteContainerBoxByIds(Convert.toStrArray(ids));
	}

	/**
	 * 查找空格子
	 * @param uuid uuid
	 * @return 空格子对象
	 */
	@Override
	public ContainerBox findFreeBox(String uuid) {
		return containerBoxMapper.findFreeBox(uuid);
	}
}
