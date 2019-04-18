package com.aaa.project.system.consumerAccount.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 消费者账号表 cw_consumer_account
 * 
 * @author aaa
 * @date 2019-04-18
 */
public class ConsumerAccount extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 消费者账号/手机号 */
	private String consumerAccount;
	/** 消费者密码 */
	private String consumerPassword;
	/** openid */
	private String openid;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setConsumerAccount(String consumerAccount) 
	{
		this.consumerAccount = consumerAccount;
	}

	public String getConsumerAccount() 
	{
		return consumerAccount;
	}
	public void setConsumerPassword(String consumerPassword) 
	{
		this.consumerPassword = consumerPassword;
	}

	public String getConsumerPassword() 
	{
		return consumerPassword;
	}
	public void setOpenid(String openid) 
	{
		this.openid = openid;
	}

	public String getOpenid() 
	{
		return openid;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("consumerAccount", getConsumerAccount())
            .append("consumerPassword", getConsumerPassword())
            .append("openid", getOpenid())
            .toString();
    }
}
