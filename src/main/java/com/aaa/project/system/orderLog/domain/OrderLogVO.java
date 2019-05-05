package com.aaa.project.system.orderLog.domain;

import java.util.Date;

public class OrderLogVO {
    /** 编号 */
    private Integer id;
    /** 订单编号 */
    private String orderId;
    /** 日志内容 */
    private String content;
    /** 生成时间 */
    private Date createDate;
    /** 图片路径 */
    private String imagePath;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
}
