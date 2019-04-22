package com.aaa.project.system.model.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 模式表 cw_model
 * 
 * @author aaa
 * @date 2019-04-22
 */
public class Model extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 模式名称 */
	private String modelName;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setModelName(String modelName) 
	{
		this.modelName = modelName;
	}

	public String getModelName() 
	{
		return modelName;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("modelName", getModelName())
            .toString();
    }
}
