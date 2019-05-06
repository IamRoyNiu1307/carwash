package com.aaa.project.system.evaluate.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 评价表 cw_evaluate
 * 
 * @author aaa
 * @date 2019-04-19
 */
public class Evaluate extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 业务编号 */
	private String storeId;
	/** 发表时间 */
	private Date pushTime;
	/** 评论账号 */
	private String consumerAccount;
	/** 好评星级 */
	private Integer star;

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
	public void setPushTime(Date pushTime) 
	{
		this.pushTime = pushTime;
	}

	public Date getPushTime() 
	{
		return pushTime;
	}
	public void setConsumerAccount(String consumerAccount) 
	{
		this.consumerAccount = consumerAccount;
	}

	public String getConsumerAccount() 
	{
		return consumerAccount;
	}
	public void setStar(Integer star) 
	{
		this.star = star;
	}

	public Integer getStar() 
	{
		return star;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("storeId", getStoreId())
            .append("pushTime", getPushTime())
            .append("consumerAccount", getConsumerAccount())
            .append("star", getStar())
            .toString();
    }
}
