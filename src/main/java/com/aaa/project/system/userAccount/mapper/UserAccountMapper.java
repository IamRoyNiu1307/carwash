package com.aaa.project.system.userAccount.mapper;

import com.aaa.project.system.userAccount.domain.UserAccount;
import java.util.List;	

/**
 * 用户 数据层
 * 
 * @author aaa
 * @date 2019-04-23
 */
public interface UserAccountMapper 
{
	/**
     * 查询用户信息
     * 
     * @param id 用户ID
     * @return 用户信息
     */
	public UserAccount selectUserAccountById(Integer id);

	/**
	 *
	 * @param userId
	 * @return
	 */
	public UserAccount selectUserAccountByUserId(Integer userId);

	/**
	 * 查询洗车员所属店铺
	 *
	 * @param openId 唯一openid
	 * @return 店铺id
	 */
	public String selectStoreIdByOpenId(String openId);

	/**
     * 查询用户列表
     * 
     * @param userAccount 用户信息
     * @return 用户集合
     */
	public List<UserAccount> selectUserAccountList(UserAccount userAccount);
	
	/**
     * 新增用户
     * 
     * @param userAccount 用户信息
     * @return 结果
     */
	public int insertUserAccount(UserAccount userAccount);
	
	/**
     * 修改用户
     * 
     * @param userAccount 用户信息
     * @return 结果
     */
	public int updateUserAccount(UserAccount userAccount);
	
	/**
     * 删除用户
     * 
     * @param id 用户ID
     * @return 结果
     */
	public int deleteUserAccountById(Integer id);
	
	/**
     * 批量删除用户
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteUserAccountByIds(String[] ids);

	/**
	 * 根据userId查询店铺Id
	 * @param userId
	 * @return 店铺Id
	 */
	public String selectStoreIdByUserId(Long userId);
	
}