package com.aaa.project.system.carInfo.domain;

import com.aaa.project.system.carImage.domain.CarImage;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

import java.math.BigDecimal;
import java.util.List;

/**
 * 车辆表 cw_car_info
 * 
 * @author aaa
 * @date 2019-04-18
 */
public class CarInfo extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 车牌号 */
	private String carLicence;
	/** 品牌 */
	private String brand;
	/** 车辆型号 */
	private String typeName;
	/** 颜色 */
	private String color;
	/** 车位地址(经度) */
	private BigDecimal carAddrLng;
	/** 车位地址(纬度) */
	private BigDecimal carAddrLat;
	/** 所属账号 */
	private String ownerAccount;
	/** 是否默认 */
	private Boolean carDefault;
	/** 车辆图片 */
	private List<CarImage> carImageList;
	/** 车位地址 */
	private String carAddr;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setCarLicence(String carLicence) 
	{
		this.carLicence = carLicence;
	}

	public String getCarLicence() 
	{
		return carLicence;
	}
	public void setBrand(String brand) 
	{
		this.brand = brand;
	}

	public String getBrand() 
	{
		return brand;
	}
	public void setTypeName(String typeName) 
	{
		this.typeName = typeName;
	}

	public String getTypeName() 
	{
		return typeName;
	}
	public void setColor(String color) 
	{
		this.color = color;
	}

	public String getColor() 
	{
		return color;
	}
	public void setCarAddrLng(BigDecimal carAddrLng) 
	{
		this.carAddrLng = carAddrLng;
	}

	public BigDecimal getCarAddrLng() 
	{
		return carAddrLng;
	}
	public void setCarAddrLat(BigDecimal carAddrLat) 
	{
		this.carAddrLat = carAddrLat;
	}

	public BigDecimal getCarAddrLat() 
	{
		return carAddrLat;
	}
	public void setOwnerAccount(String ownerAccount) 
	{
		this.ownerAccount = ownerAccount;
	}

	public String getOwnerAccount() 
	{
		return ownerAccount;
	}
	public void setCarDefault(Boolean carDefault) 
	{
		this.carDefault = carDefault;
	}

	public Boolean getCarDefault() 
	{
		return carDefault;
	}

	public List<CarImage> getCarImageList() {
		return carImageList;
	}

	public void setCarImageList(List<CarImage> carImageList) {
		this.carImageList = carImageList;
	}

	public String getCarAddr() {
		return carAddr;
	}

	public void setCarAddr(String carAddr) {
		this.carAddr = carAddr;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("carLicence", getCarLicence())
            .append("brand", getBrand())
            .append("typeName", getTypeName())
            .append("color", getColor())
            .append("carAddrLng", getCarAddrLng())
            .append("carAddrLat", getCarAddrLat())
            .append("ownerAccount", getOwnerAccount())
            .append("carDefault", getCarDefault())
            .toString();
    }
}
