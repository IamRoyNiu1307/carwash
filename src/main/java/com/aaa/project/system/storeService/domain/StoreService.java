package com.aaa.project.system.storeService.domain;

import com.aaa.project.system.status.domain.Status;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 业务表 cw_store_service
 * 
 * @author aaa
 * @date 2019-04-19
 */
public class StoreService extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 门店编号 */
	private String storeId;
	/** 业务名称 */
	private String serviceName;
	/** 详细描述 */
	private String description;
	/** 业务状态编号 */
	private Integer statusId;
	/** 业务费用 */
	private Float cost;
	/** 购买次数 */
	private Integer numberPurchased;

	/** 业务状态 */
	private Status status;

	private String statusName;

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

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
	public void setStatusId(Integer statusId) 
	{
		this.statusId = statusId;
	}

	public Integer getStatusId() 
	{
		return statusId;
	}
	public void setCost(Float cost) 
	{
		this.cost = cost;
	}

	public Float getCost() 
	{
		return cost;
	}
	public void setNumberPurchased(Integer numberPurchased) 
	{
		this.numberPurchased = numberPurchased;
	}

	public Integer getNumberPurchased() 
	{
		return numberPurchased;
	}

	@Override
	public String toString() {
		return "StoreService{" +
				"id=" + id +
				", storeId='" + storeId + '\'' +
				", serviceName='" + serviceName + '\'' +
				", description='" + description + '\'' +
				", statusId=" + statusId +
				", cost=" + cost +
				", numberPurchased=" + numberPurchased +
				", status=" + status +
				'}';
	}
}
