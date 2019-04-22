package com.aaa.project.system.model.service;

import com.aaa.common.support.Convert;
import com.aaa.project.system.model.domain.Model;
import com.aaa.project.system.model.mapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 模式 服务层实现
 * 
 * @author aaa
 * @date 2019-04-22
 */
@Service
public class ModelServiceImpl implements IModelService 
{
	@Autowired
	private ModelMapper modelMapper;

	/**
     * 查询模式信息
     * 
     * @param id 模式ID
     * @return 模式信息
     */
    @Override
	public Model selectModelById(Integer id)
	{
	    return modelMapper.selectModelById(id);
	}
	
	/**
     * 查询模式列表
     * 
     * @param model 模式信息
     * @return 模式集合
     */
	@Override
	public List<Model> selectModelList(Model model)
	{
	    return modelMapper.selectModelList(model);
	}
	
    /**
     * 新增模式
     * 
     * @param model 模式信息
     * @return 结果
     */
	@Override
	public int insertModel(Model model)
	{
	    return modelMapper.insertModel(model);
	}
	
	/**
     * 修改模式
     * 
     * @param model 模式信息
     * @return 结果
     */
	@Override
	public int updateModel(Model model)
	{
	    return modelMapper.updateModel(model);
	}

	/**
     * 删除模式对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteModelByIds(String ids)
	{
		return modelMapper.deleteModelByIds(Convert.toStrArray(ids));
	}

	/**
	 * 根据id查询模式名称
	 * @param id 模式id
	 * @return 模式名称
	 */
	@Override
	public String selectModelNameById(Integer id){return modelMapper.selectModelNameById(id);};

	/**
	 * 查询所有模式信息
	 * @return 模式信息集合
	 */
	@Override
	public List<Model> selectAllModel(){return modelMapper.selectAllModel();};
}
