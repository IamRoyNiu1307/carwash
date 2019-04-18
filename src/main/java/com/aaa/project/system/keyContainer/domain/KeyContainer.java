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
	/** 经度 */
	private BigDecimal posLng;
	/** 纬度 */
	private BigDecimal posLat;
	/** UUID */
	private String uUID;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
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
	public void setUUID(String uUID) 
	{
		this.uUID = uUID;
	}

	public String getUUID() 
	{
		return uUID;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("posLng", getPosLng())
            .append("posLat", getPosLat())
            .append("uUID", getUUID())
            .toString();
    }
}
