package com.aaa.project.system.containerBox.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 货柜格子表 cw_container_box
 * 
 * @author aaa
 * @date 2019-05-06
 */
public class ContainerBox extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** uuid */
	private String uuid;
	/** 柜号 */
	private String containerNum;
	/** 箱号 */
	private String boxNum;
	/** 校验码 */
	private String code;
	/** 状态id */
	private Integer statusId;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setUuid(String uuid) 
	{
		this.uuid = uuid;
	}

	public String getUuid() 
	{
		return uuid;
	}
	public void setContainerNum(String containerNum) 
	{
		this.containerNum = containerNum;
	}

	public String getContainerNum() 
	{
		return containerNum;
	}
	public void setBoxNum(String boxNum) 
	{
		this.boxNum = boxNum;
	}

	public String getBoxNum() 
	{
		return boxNum;
	}
	public void setCode(String code) 
	{
		this.code = code;
	}

	public String getCode() 
	{
		return code;
	}
	public void setStatusId(Integer statusId) 
	{
		this.statusId = statusId;
	}

	public Integer getStatusId() 
	{
		return statusId;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("uuid", getUuid())
            .append("containerNum", getContainerNum())
            .append("boxNum", getBoxNum())
            .append("code", getCode())
            .append("statusId", getStatusId())
            .toString();
    }
}
