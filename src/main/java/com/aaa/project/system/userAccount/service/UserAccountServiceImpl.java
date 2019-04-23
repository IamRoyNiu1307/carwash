package com.aaa.project.system.userAccount.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.userAccount.mapper.UserAccountMapper;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.service.IUserAccountService;
import com.aaa.common.support.Convert;

/**
 * 用户 服务层实现
 * 
 * @author aaa
 * @date 2019-04-23
 */
@Service
public class UserAccountServiceImpl implements IUserAccountService 
{
	@Autowired
	private UserAccountMapper userAccountMapper;

	/**
     * 查询用户信息
     * 
     * @param id 用户ID
     * @return 用户信息
     */
    @Override
	public UserAccount selectUserAccountById(Integer id)
	{
	    return userAccountMapper.selectUserAccountById(id);
	}
	
	/**
     * 查询用户列表
     * 
     * @param userAccount 用户信息
     * @return 用户集合
     */
	@Override
	public List<UserAccount> selectUserAccountList(UserAccount userAccount)
	{
	    return userAccountMapper.selectUserAccountList(userAccount);
	}
	
    /**
     * 新增用户
     * 
     * @param userAccount 用户信息
     * @return 结果
     */
	@Override
	public int insertUserAccount(UserAccount userAccount)
	{
	    return userAccountMapper.insertUserAccount(userAccount);
	}
	
	/**
     * 修改用户
     * 
     * @param userAccount 用户信息
     * @return 结果
     */
	@Override
	public int updateUserAccount(UserAccount userAccount)
	{
	    return userAccountMapper.updateUserAccount(userAccount);
	}

	/**
     * 删除用户对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteUserAccountByIds(String ids)
	{
		return userAccountMapper.deleteUserAccountByIds(Convert.toStrArray(ids));
	}
	
}
