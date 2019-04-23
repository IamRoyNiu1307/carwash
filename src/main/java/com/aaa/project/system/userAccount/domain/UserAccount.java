package com.aaa.project.system.userAccount.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 用户表 cw_user_account
 * 
 * @author aaa
 * @date 2019-04-23
 */
public class UserAccount extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 用户编号 */
	private Long userId;
	/** openid */
	private String openid;
	/** 驾照A面 */
	private String drivingLicence1;
	/** 驾照B面 */
	private String drivingLicence2;
	/** 所属门店编号 */
	private String storeId;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId()
	{
		return id;
	}
	public void setUserId(Long userId)
	{
		this.userId = userId;
	}

	public Long getUserId()
	{
		return userId;
	}
	public void setOpenid(String openid) 
	{
		this.openid = openid;
	}

	public String getOpenid() 
	{
		return openid;
	}
	public void setDrivingLicence1(String drivingLicence1) 
	{
		this.drivingLicence1 = drivingLicence1;
	}

	public String getDrivingLicence1() 
	{
		return drivingLicence1;
	}
	public void setDrivingLicence2(String drivingLicence2) 
	{
		this.drivingLicence2 = drivingLicence2;
	}

	public String getDrivingLicence2() 
	{
		return drivingLicence2;
	}
	public void setStoreId(String storeId)
	{
		this.storeId = storeId;
	}

	public String getStoreId()
	{
		return storeId;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("openid", getOpenid())
            .append("drivingLicence1", getDrivingLicence1())
            .append("drivingLicence2", getDrivingLicence2())
            .append("storeId", getStoreId())
            .toString();
    }
}
