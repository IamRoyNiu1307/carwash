package com.aaa.project.system.checkUser.service;

import com.aaa.project.system.checkUser.domain.CheckUser;

import java.util.List;

public interface ICheckUserService {
    List<CheckUser> selectCheckUserList();

    CheckUser selectByUserId(Long userId);
}
