package com.aaa.project.system.keyContainer.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

import java.math.BigDecimal;

/**
 * 钥匙柜表 cw_key_container
 * 
 * @author aaa
 * @date 2019-04-18
 */
public class KeyContainer extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** UUID */
	private String uuid;
	/** 名称 */
	private String containerName;
	/** 经度 */
	private BigDecimal posLng;
	/** 纬度 */
	private BigDecimal posLat;
	/** 城市编号 */
	private String cityid;

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
	public void setContainerName(String containerName) 
	{
		this.containerName = containerName;
	}

	public String getContainerName() 
	{
		return containerName;
	}
	public void setPosLng(BigDecimal posLng) 
	{
		this.posLng = posLng;
	}

	public BigDecimal getPosLng() 
	{
		return posLng;
	}
	public void setPosLat(BigDecimal posLat) 
	{
		this.posLat = posLat;
	}

	public BigDecimal getPosLat() 
	{
		return posLat;
	}
	public void setCityid(String cityid) 
	{
		this.cityid = cityid;
	}

	public String getCityid() 
	{
		return cityid;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("uuid", getUuid())
            .append("containerName", getContainerName())
            .append("posLng", getPosLng())
            .append("posLat", getPosLat())
            .append("cityid", getCityid())
            .toString();
    }
}
