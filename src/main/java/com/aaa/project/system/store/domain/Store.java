package com.aaa.project.system.store.domain;

import com.aaa.project.system.storeEnv.domain.StoreEnv;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

import java.math.BigDecimal;
import java.util.List;

/**
 * 门店表 cw_store
 * 
 * @author aaa
 * @date 2019-04-18
 */
public class Store extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 门店编号 */
	private String storeId;
	/** 门店名 */
	private String storeName;
	/** 创建人账号 */
	private String ownerAccount;
	/** 所在省份 */
	private String provinceid;
	/** 所在城市 */
	private String cityid;
	/** 所在街道 */
	private String street;
	/** 经度 */
	private BigDecimal posLng;
	/** 纬度 */
	private BigDecimal posLat;
	/** 联系人 */
	private String contacts;
	/** 联系电话 */
	private String contactsPhone;
	/** 门店状态编号 */
	private Integer statusId;
	/** 简介 */
	private String introduction;
	/** 图标路径 */
	private String faviconPath;

	private List<StoreEnv> storeEnvList;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setStoreId(String storeId) 
	{
		this.storeId = storeId;
	}

	public String getStoreId() 
	{
		return storeId;
	}
	public void setStoreName(String storeName) 
	{
		this.storeName = storeName;
	}

	public String getStoreName() 
	{
		return storeName;
	}
	public void setOwnerAccount(String ownerAccount) 
	{
		this.ownerAccount = ownerAccount;
	}

	public String getOwnerAccount() 
	{
		return ownerAccount;
	}
	public void setProvinceid(String provinceid) 
	{
		this.provinceid = provinceid;
	}

	public String getProvinceid() 
	{
		return provinceid;
	}
	public void setCityid(String cityid) 
	{
		this.cityid = cityid;
	}

	public String getCityid() 
	{
		return cityid;
	}
	public void setStreet(String street) 
	{
		this.street = street;
	}

	public String getStreet() 
	{
		return street;
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
	public void setContacts(String contacts) 
	{
		this.contacts = contacts;
	}

	public String getContacts() 
	{
		return contacts;
	}
	public void setContactsPhone(String contactsPhone) 
	{
		this.contactsPhone = contactsPhone;
	}

	public String getContactsPhone() 
	{
		return contactsPhone;
	}
	public void setStatusId(Integer statusId) 
	{
		this.statusId = statusId;
	}

	public Integer getStatusId() 
	{
		return statusId;
	}
	public void setIntroduction(String introduction) 
	{
		this.introduction = introduction;
	}

	public String getIntroduction() 
	{
		return introduction;
	}
	public void setFaviconPath(String faviconPath) 
	{
		this.faviconPath = faviconPath;
	}

	public String getFaviconPath() 
	{
		return faviconPath;
	}

	public List<StoreEnv> getStoreEnvList() {
		return storeEnvList;
	}

	public void setStoreEnvList(List<StoreEnv> storeEnvList) {
		this.storeEnvList = storeEnvList;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("storeId", getStoreId())
            .append("storeName", getStoreName())
            .append("ownerAccount", getOwnerAccount())
            .append("provinceid", getProvinceid())
            .append("cityid", getCityid())
            .append("street", getStreet())
            .append("posLng", getPosLng())
            .append("posLat", getPosLat())
            .append("contacts", getContacts())
            .append("contactsPhone", getContactsPhone())
            .append("statusId", getStatusId())
            .append("introduction", getIntroduction())
            .append("faviconPath", getFaviconPath())
            .toString();
    }
}
