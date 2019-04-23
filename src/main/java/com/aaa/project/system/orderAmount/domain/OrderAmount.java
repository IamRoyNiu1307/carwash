package com.aaa.project.system.orderAmount.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 订单金额表 cw_order_amount
 * 
 * @author aaa
 * @date 2019-04-23
 */
public class OrderAmount extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 订单编号 */
	private String orderId;
	/** 订单总金额 */
	private Float totalAmount;
	/** 最终金额 */
	private Float finalAmount;

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
	public void setTotalAmount(Float totalAmount) 
	{
		this.totalAmount = totalAmount;
	}

	public Float getTotalAmount() 
	{
		return totalAmount;
	}
	public void setFinalAmount(Float finalAmount) 
	{
		this.finalAmount = finalAmount;
	}

	public Float getFinalAmount() 
	{
		return finalAmount;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderId", getOrderId())
            .append("totalAmount", getTotalAmount())
            .append("finalAmount", getFinalAmount())
            .toString();
    }
}
