package com.aaa.project.system.orderService.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 订单服务关系表 cw_order_service
 * 
 * @author aaa
 * @date 2019-04-22
 */
public class OrderService extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 订单编号 */
	private String orderId;
	/** 业务编号 */
	private Integer serviceId;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setOrderId(String orderId) 
	{
		this.orderId = orderId;
	}

	public String getOrderId() 
	{
		return orderId;
	}
	public void setServiceId(Integer serviceId) 
	{
		this.serviceId = serviceId;
	}

	public Integer getServiceId() 
	{
		return serviceId;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderId", getOrderId())
            .append("serviceId", getServiceId())
            .toString();
    }
}
