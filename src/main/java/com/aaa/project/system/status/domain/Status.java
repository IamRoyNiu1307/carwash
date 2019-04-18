package com.aaa.project.system.status.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 状态表 cw_status
 * 
 * @author aaa
 * @date 2019-04-18
 */
public class Status extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 状态名称 */
	private String statusName;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setStatusName(String statusName) 
	{
		this.statusName = statusName;
	}

	public String getStatusName() 
	{
		return statusName;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("statusName", getStatusName())
            .toString();
    }
}
