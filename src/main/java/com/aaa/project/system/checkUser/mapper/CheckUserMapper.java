package com.aaa.project.system.checkUser.mapper;

import com.aaa.project.system.checkUser.domain.CheckUser;

import java.util.List;

public interface CheckUserMapper {
    List<CheckUser> selectCheckUserList();

    CheckUser selectByUserId(Long userId);
}
