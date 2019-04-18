package com.aaa.project.system.storeEnv.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 门店环境表 cw_store_env
 * 
 * @author aaa
 * @date 2019-04-18
 */
public class StoreEnv extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 门店编号 */
	private String storeId;
	/** 门店环境图片路径 */
	private String imagePath;

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
	public void setImagePath(String imagePath) 
	{
		this.imagePath = imagePath;
	}

	public String getImagePath() 
	{
		return imagePath;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("storeId", getStoreId())
            .append("imagePath", getImagePath())
            .toString();
    }
}
