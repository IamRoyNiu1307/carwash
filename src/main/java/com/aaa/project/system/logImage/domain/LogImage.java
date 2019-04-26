package com.aaa.project.system.logImage.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;

/**
 * 日志图片表 cw_log_image
 * 
 * @author aaa
 * @date 2019-04-26
 */
public class LogImage extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 日志编号 */
	private Integer logId;
	/** 图片路径 */
	private String imagePath;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setLogId(Integer logId) 
	{
		this.logId = logId;
	}

	public Integer getLogId() 
	{
		return logId;
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
            .append("logId", getLogId())
            .append("imagePath", getImagePath())
            .toString();
    }
}
