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
	/** 用户账号 */
	private String userAccount;
	/** 用户密码 */
	private String userPassword;
	/** 角色编号 */
	private Integer roleId;
	/** openid */
	private String openid;
	/** 真实姓名 */
	private String realName;
	/** 联系电话 */
	private String phone;
	/** 驾照A面 */
	private String drivingLicence1;
	/** 驾照B面 */
	private String drivingLicence2;

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
	public void setUserPassword(String userPassword) 
	{
		this.userPassword = userPassword;
	}

	public String getUserPassword() 
	{
		return userPassword;
	}
	public void setRoleId(Integer roleId) 
	{
		this.roleId = roleId;
	}

	public Integer getRoleId() 
	{
		return roleId;
	}
	public void setOpenid(String openid) 
	{
		this.openid = openid;
	}

	public String getOpenid() 
	{
		return openid;
	}
	public void setRealName(String realName) 
	{
		this.realName = realName;
	}

	public String getRealName() 
	{
		return realName;
	}
	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public String getPhone() 
	{
		return phone;
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

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userAccount", getUserAccount())
            .append("userPassword", getUserPassword())
            .append("roleId", getRoleId())
            .append("openid", getOpenid())
            .append("realName", getRealName())
            .append("phone", getPhone())
            .append("drivingLicence1", getDrivingLicence1())
            .append("drivingLicence2", getDrivingLicence2())
            .toString();
    }
}
