package com.aaa.project.system.checkUser.domain;

import com.aaa.framework.aspectj.lang.annotation.Excel;
import com.aaa.framework.web.domain.BaseEntity;
import com.aaa.project.system.role.domain.Role;
import com.aaa.project.system.store.domain.Store;

import java.util.Arrays;
import java.util.List;

public class CheckUser extends BaseEntity {

    /** 用户ID */
    @Excel(name = "用户序号")
    private Long userId;

    /** 登录名称 */
    @Excel(name = "登录名称")
    private String loginName;

    /** 用户名称 */
    @Excel(name = "用户名称")
    private String userName;

    /** 手机号码 */
    @Excel(name = "手机号码")
    private String phonenumber;

    /** 用户性别 */
    @Excel(name = "用户性别", readConverterExp = "0=男,1=女,2=未知")
    private String sex;

    /** 密码 */
    private String password;

    /** 盐加密 */
    private String salt;

    /** 帐号状态（0正常 1停用） */
    @Excel(name = "帐号状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 角色集合 */
    private List<Role> roles;

    /** 角色组 */
    private Long[] roleIds;
    /** 驾照A面 */
    private String drivingLicence1;
    /** 驾照B面 */
    private String drivingLicence2;
    /** 所属门店编号 */
    private String storeId;

    private Store store;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public Long[] getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(Long[] roleIds) {
        this.roleIds = roleIds;
    }

    public String getDrivingLicence1() {
        return drivingLicence1;
    }

    public void setDrivingLicence1(String drivingLicence1) {
        this.drivingLicence1 = drivingLicence1;
    }

    public String getDrivingLicence2() {
        return drivingLicence2;
    }

    public void setDrivingLicence2(String drivingLicence2) {
        this.drivingLicence2 = drivingLicence2;
    }

    public String getStoreId() {
        return storeId;
    }

    public void setStoreId(String storeId) {
        this.storeId = storeId;
    }

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

    @Override
    public String toString() {
        return "CheckUser{" +
                "userId=" + userId +
                ", loginName='" + loginName + '\'' +
                ", userName='" + userName + '\'' +
                ", phonenumber='" + phonenumber + '\'' +
                ", sex='" + sex + '\'' +
                ", password='" + password + '\'' +
                ", salt='" + salt + '\'' +
                ", status='" + status + '\'' +
                ", roles=" + roles +
                ", roleIds=" + Arrays.toString(roleIds) +
                ", drivingLicence1='" + drivingLicence1 + '\'' +
                ", drivingLicence2='" + drivingLicence2 + '\'' +
                ", storeId='" + storeId + '\'' +
                ", store=" + store +
                '}';
    }
}
