package com.aaa.project.system.userAccount.domain;

import com.aaa.project.system.role.domain.Role;

import java.util.List;

/**
 * userAccount试图对象
 */
public class UserAccountVO {
    /** 姓名*/
    private String username;
    /** 登录名称*/
    private String loginName;
    /** 密码*/
    private String password;
    /** 手机号*/
    private String phonenumber;
    /** 性别*/
    private String sex;
    /** 账号状态*/
    private String status;
    /** 驾照A面 */
    private String drivingLicence1;
    /** 驾照B面 */
    private String drivingLicence2;
    /** 所属门店编号 */
    private String storeId;
    /** 角色*/
    private List<Role> roles;
    /** 角色组 */
    private Long[] roleIds;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    @Override
    public String toString() {
        return "UserAccountVO{" +
                "username='" + username + '\'' +
                ", loginName='" + loginName + '\'' +
                ", password='" + password + '\'' +
                ", phonenumber='" + phonenumber + '\'' +
                ", sex='" + sex + '\'' +
                ", status='" + status + '\'' +
                ", drivingLicence1='" + drivingLicence1 + '\'' +
                ", drivingLicence2='" + drivingLicence2 + '\'' +
                ", storeId='" + storeId + '\'' +
                '}';
    }
}
