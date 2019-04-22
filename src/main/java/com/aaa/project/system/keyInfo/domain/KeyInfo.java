package com.aaa.project.system.keyInfo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 钥匙表 cw_key_info
 * 
 * @author aaa
 * @date 2019-04-19
 */
public class KeyInfo extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 钥匙柜编号 */
	private String containerId;
	/** 状态编号 */
	private Integer statusId;
	/** 状态名称*/
	private String statusName;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setContainerId(String containerId) 
	{
		this.containerId = containerId;
	}

	public String getContainerId() 
	{
		return containerId;
	}
	public void setStatusId(Integer statusId) 
	{
		this.statusId = statusId;
	}

	public Integer getStatusId() 
	{
		return statusId;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("containerId", getContainerId())
            .append("statusId", getStatusId())
            .toString();
    }
}
