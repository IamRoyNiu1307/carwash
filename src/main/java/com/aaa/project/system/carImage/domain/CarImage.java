package com.aaa.project.system.carImage.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 汽车图片表 cw_car_image
 * 
 * @author aaa
 * @date 2019-04-19
 */
public class CarImage extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 车辆信息编号 */
	private Integer carInfoId;
	/** URL */
	private String imageUrl;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setCarInfoId(Integer carInfoId) 
	{
		this.carInfoId = carInfoId;
	}

	public Integer getCarInfoId() 
	{
		return carInfoId;
	}
	public void setImageUrl(String imageUrl) 
	{
		this.imageUrl = imageUrl;
	}

	public String getImageUrl() 
	{
		return imageUrl;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("carInfoId", getCarInfoId())
            .append("imageUrl", getImageUrl())
            .toString();
    }
}
