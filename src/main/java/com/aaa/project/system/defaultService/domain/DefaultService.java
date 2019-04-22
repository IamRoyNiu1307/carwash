package com.aaa.project.system.defaultService.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 默认业务表 cw_default_service
 * 
 * @author aaa
 * @date 2019-04-19
 */
public class DefaultService extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 业务名称 */
	private String serviceName;
	/** 详细介绍 */
	private String description;

	public void setId(Integer id)
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setServiceName(String serviceName) 
	{
		this.serviceName = serviceName;
	}

	public String getServiceName() 
	{
		return serviceName;
	}
	public void setDescription(String description) 
	{
		this.description = description;
	}

	public String getDescription() 
	{
		return description;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("serviceName", getServiceName())
            .append("description", getDescription())
            .toString();
    }
}
