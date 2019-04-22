package com.aaa.project.system.order.domain;

import com.aaa.project.system.keyInfo.domain.KeyInfo;
import com.aaa.project.system.store.domain.Store;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.aaa.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 订单表 cw_order
 * 
 * @author aaa
 * @date 2019-04-19
 */
public class Order extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 订单编号 */
	private String orderId;
	/** 消费者账号 */
	private String consumerAccount;
	/** 门店编号 */
	private String storeId;
	/** 订单状态编号 */
	private Integer statusId;
	/** 付款状态编号 */
	private Integer payStatusId;
	/** 付款时间 */
	private Date payDate;
	/** 下单时间 */
	private Date createDate;
	/** 完成时间 */
	private Date finishDate;
	/** 车辆编号 */
	private Integer carId;
	/** 车辆所在地址 */
	private String carAddress;
	/** 钥匙信息编号 */
	private Integer keyInfoId;
	/** 模式编号 */
	private Integer typeId;
	/** 模式名称*/
	private String typeName;
	/** 工作人员账号 */
	private String userAccount;
	/** 备注 */
	private String orderComment;
	/** 预约时间 */
	private Date appointmentTime;
	/** 时间段 */
	private Integer timeQuantum;
	/** 预算范围编号 */
	private Integer expectCostId;
	/** KeyInfo实体类*/
	private KeyInfo keyInfo;
	/** status名称*/
	private String statusName;
	/** 门店*/
	private Store store;
	/** 付款状态名称*/
	private String payStatusName;
	/** 预算范围名称*/
	private String expectCostName;

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
	public void setConsumerAccount(String consumerAccount) 
	{
		this.consumerAccount = consumerAccount;
	}

	public String getConsumerAccount() 
	{
		return consumerAccount;
	}
	public void setStoreId(String storeId) 
	{
		this.storeId = storeId;
	}

	public String getStoreId() 
	{
		return storeId;
	}
	public void setStatusId(Integer statusId) 
	{
		this.statusId = statusId;
	}

	public Integer getStatusId() 
	{
		return statusId;
	}
	public void setPayStatusId(Integer payStatusId) 
	{
		this.payStatusId = payStatusId;
	}

	public Integer getPayStatusId() 
	{
		return payStatusId;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public void setCreateDate(Date createDate)
	{
		this.createDate = createDate;
	}

	public Date getCreateDate() 
	{
		return createDate;
	}
	public void setFinishDate(Date finishDate) 
	{
		this.finishDate = finishDate;
	}

	public Date getFinishDate() 
	{
		return finishDate;
	}
	public void setCarId(Integer carId) 
	{
		this.carId = carId;
	}

	public Integer getCarId() 
	{
		return carId;
	}
	public void setCarAddress(String carAddress) 
	{
		this.carAddress = carAddress;
	}

	public String getCarAddress() 
	{
		return carAddress;
	}
	public void setKeyInfoId(Integer keyInfoId) 
	{
		this.keyInfoId = keyInfoId;
	}

	public Integer getKeyInfoId() 
	{
		return keyInfoId;
	}
	public void setTypeId(Integer typeId) 
	{
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Integer getTypeId()
	{
		return typeId;
	}
	public void setUserAccount(String userAccount) 
	{
		this.userAccount = userAccount;
	}

	public String getUserAccount() 
	{
		return userAccount;
	}
	public void setOrderComment(String orderComment) 
	{
		this.orderComment = orderComment;
	}

	public String getOrderComment() 
	{
		return orderComment;
	}
	public void setAppointmentTime(Date appointmentTime) 
	{
		this.appointmentTime = appointmentTime;
	}

	public Date getAppointmentTime() 
	{
		return appointmentTime;
	}
	public void setTimeQuantum(Integer timeQuantum) 
	{
		this.timeQuantum = timeQuantum;
	}

	public Integer getTimeQuantum() 
	{
		return timeQuantum;
	}
	public void setExpectCostId(Integer expectCostId) 
	{
		this.expectCostId = expectCostId;
	}

	public Integer getExpectCostId() 
	{
		return expectCostId;
	}

	public KeyInfo getKeyInfo() {
		return keyInfo;
	}

	public void setKeyInfo(KeyInfo keyInfo) {
		this.keyInfo = keyInfo;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	public String getPayStatusName() {
		return payStatusName;
	}

	public void setPayStatusName(String payStatusName) {
		this.payStatusName = payStatusName;
	}

	public String getExpectCostName() {
		return expectCostName;
	}

	public void setExpectCostName(String expectCostName) {
		this.expectCostName = expectCostName;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderId", getOrderId())
            .append("consumerAccount", getConsumerAccount())
            .append("storeId", getStoreId())
            .append("statusId", getStatusId())
            .append("payStatusId", getPayStatusId())
            .append("createDate", getCreateDate())
            .append("finishDate", getFinishDate())
            .append("carId", getCarId())
            .append("carAddress", getCarAddress())
            .append("keyInfoId", getKeyInfoId())
            .append("typeId", getTypeId())
            .append("userAccount", getUserAccount())
            .append("orderComment", getOrderComment())
            .append("appointmentTime", getAppointmentTime())
            .append("timeQuantum", getTimeQuantum())
            .append("expectCostId", getExpectCostId())
            .toString();
    }
}
