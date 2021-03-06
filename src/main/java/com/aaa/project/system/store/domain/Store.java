package com.aaa.project.system.store.domain;

import com.aaa.framework.web.domain.BaseEntity;
import com.aaa.project.system.cities.domain.Cities;
import com.aaa.project.system.provinces.domain.Provinces;
import com.aaa.project.system.status.domain.Status;
import com.aaa.project.system.storeEnv.domain.StoreEnv;

import java.math.BigDecimal;
import java.util.List;

/**
 * 门店表 cw_store
 *
 * @author aaa
 * @date 2019-04-18
 */
public class Store extends BaseEntity {

    /**
     * 编号
     */
    private Integer id;
    /**
     * 门店编号
     */
    private String storeId;
    /**
     * 门店名
     */
    private String storeName;
    /**
     * 创建人账号
     */
    private String ownerAccount;
    /**
     * 所在省份
     */
    private String provinceid;
    /**
     * 所在城市
     */
    private String cityid;
    /**
     * 所在街道
     */
    private String street;
    /**
     * 经度
     */
    private BigDecimal posLng;
    /**
     * 纬度
     */
    private BigDecimal posLat;
    /**
     * 联系人
     */
    private String contacts;
    /**
     * 联系电话
     */
    private String contactsPhone;
    /**
     * 门店状态编号
     */
    private Integer statusId;
    /**
     * 简介
     */
    private String introduction;
    /**
     * 图标路径
     */
    private String faviconPath;
    /**
     * 城市
     */
    private Cities city;
    /**
     * 省份
     */
    private Provinces province;
    /**
     * 状态
     */
    private Status status;
    /**
     * 评价等级
     */
    private Integer star;

    private List<StoreEnv> storeEnvList;


    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setStoreId(String storeId) {
        this.storeId = storeId;
    }

    public String getStoreId() {
        return storeId;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setOwnerAccount(String ownerAccount) {
        this.ownerAccount = ownerAccount;
    }

    public String getOwnerAccount() {
        return ownerAccount;
    }

    public void setProvinceid(String provinceid) {
        this.provinceid = provinceid;
    }

    public String getProvinceid() {
        return provinceid;
    }

    public void setCityid(String cityid) {
        this.cityid = cityid;
    }

    public String getCityid() {
        return cityid;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getStreet() {
        return street;
    }

    public void setPosLng(BigDecimal posLng) {
        this.posLng = posLng;
    }

    public BigDecimal getPosLng() {
        return posLng;
    }

    public void setPosLat(BigDecimal posLat) {
        this.posLat = posLat;
    }

    public BigDecimal getPosLat() {
        return posLat;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContactsPhone(String contactsPhone) {
        this.contactsPhone = contactsPhone;
    }

    public String getContactsPhone() {
        return contactsPhone;
    }

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public Integer getStatusId() {
        return statusId;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setFaviconPath(String faviconPath) {
        this.faviconPath = faviconPath;
    }

    public String getFaviconPath() {
        return faviconPath;
    }

    public List<StoreEnv> getStoreEnvList() {
        return storeEnvList;
    }

    public void setStoreEnvList(List<StoreEnv> storeEnvList) {
        this.storeEnvList = storeEnvList;
    }

    public Integer getStar() {
        return star;
    }

    public void setStar(Integer star) {
        this.star = star;
    }


    public Cities getCity() {
        return city;
    }

    public void setCity(Cities city) {
        this.city = city;
    }

    public Provinces getProvince() {
        return province;
    }

    public void setProvince() {
        setProvince();
    }

    public void setProvince(Provinces province) {
        this.province = province;
    }


    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Store{" +
                "id=" + id +
                ", storeId='" + storeId + '\'' +
                ", storeName='" + storeName + '\'' +
                ", ownerAccount='" + ownerAccount + '\'' +
                ", provinceid='" + provinceid + '\'' +
                ", cityid='" + cityid + '\'' +
                ", street='" + street + '\'' +
                ", posLng=" + posLng +
                ", posLat=" + posLat +
                ", contacts='" + contacts + '\'' +
                ", contactsPhone='" + contactsPhone + '\'' +
                ", statusId=" + statusId +
                ", introduction='" + introduction + '\'' +
                ", faviconPath='" + faviconPath + '\'' +
                ", city=" + city +
                ", province=" + province +
                ", status=" + status +
                ", star=" + star +
                ", storeEnvList=" + storeEnvList +
                '}';
    }
}
