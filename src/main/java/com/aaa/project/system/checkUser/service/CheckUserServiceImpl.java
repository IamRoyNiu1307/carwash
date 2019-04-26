package com.aaa.project.system.checkUser.service;

import com.aaa.project.system.checkUser.domain.CheckUser;
import com.aaa.project.system.checkUser.mapper.CheckUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CheckUserServiceImpl implements ICheckUserService {

    @Autowired
    private CheckUserMapper checkUserMapper;

    @Override
    public List<CheckUser> selectCheckUserList() {
        return checkUserMapper.selectCheckUserList();
    }

    @Override
    public CheckUser selectByUserId(Long userId) {
        return checkUserMapper.selectByUserId(userId);
    }
}
