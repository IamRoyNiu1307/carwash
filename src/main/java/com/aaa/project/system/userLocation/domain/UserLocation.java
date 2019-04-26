package com.aaa.project.system.userLocation.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 洗车员定位表 cw_user_location
 * 
 * @author aaa
 * @date 2019-04-26
 */
public class UserLocation extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 洗车员账号 */
	private String userAccount;
	/** 经度 */
	private BigDecimal posLng;
	/** 纬度 */
	private BigDecimal posLat;
	/** 更新时间 */
	private Date updateDatetime;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setUserAccount(String userAccount) 
	{
		this.userAccount = userAccount;
	}

	public String getUserAccount() 
	{
		return userAccount;
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
	public void setUpdateDatetime(Date updateDatetime) 
	{
		this.updateDatetime = updateDatetime;
	}

	public Date getUpdateDatetime() 
	{
		return updateDatetime;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userAccount", getUserAccount())
            .append("posLng", getPosLng())
            .append("posLat", getPosLat())
            .append("updateDatetime", getUpdateDatetime())
            .toString();
    }
}
