package com.aaa.project.system.expectCost.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 预算表 cw_expect_cost
 * 
 * @author aaa
 * @date 2019-04-22
 */
public class ExpectCost extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 最低消费 */
	private Integer minCharge;
	/** 最高消费 */
	private Integer maxCharge;
	/** 描述 */
	private String expectName;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setMinCharge(Integer minCharge) 
	{
		this.minCharge = minCharge;
	}

	public Integer getMinCharge() 
	{
		return minCharge;
	}
	public void setMaxCharge(Integer maxCharge) 
	{
		this.maxCharge = maxCharge;
	}

	public Integer getMaxCharge() 
	{
		return maxCharge;
	}
	public void setExpectName(String expectName) 
	{
		this.expectName = expectName;
	}

	public String getExpectName() 
	{
		return expectName;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("minCharge", getMinCharge())
            .append("maxCharge", getMaxCharge())
            .append("expectName", getExpectName())
            .toString();
    }
}
