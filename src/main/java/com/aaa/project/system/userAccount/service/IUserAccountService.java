package com.aaa.project.system.userAccount.service;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.project.system.userAccount.domain.UserAccount;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * 用户 服务层
 * 
 * @author aaa
 * @date 2019-04-23
 */
public interface IUserAccountService 
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
	public UserAccount selectUserAccountByUserId(Long userId);

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

	/**查询所属门店的userAccount
	 *
	 * @param list 店
	 * @return 用户信息
	 */
	public List<UserAccount> selectUserAccountByStoreId(List list);

	/**
     * 新增用户
     * 
     * @param userAccount 用户信息
     * @return 结果
     */
	public int insertUserAccount(UserAccount userAccount, MultipartFile drivingLicence1,MultipartFile drivingLicence2)throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException;
	
	/**
     * 修改用户
     * 
     * @param userAccount 用户信息
     * @return 结果
     */
	public int updateUserAccount(UserAccount userAccount);
		
	/**
     * 删除用户信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteUserAccountByIds(String ids);

	/**
	 * 根据userId查询店铺Id
	 * @param userId
	 * @return 店铺Id
	 */
	public String selectStoreIdByUserId(Long userId);

	/**
	 * 清空该openid的绑定信息
	 * @param openid
	 */
	void cleanOpenid(String openid);

	/**
	 * 让账号和openid绑定
	 * @param userId 用户id
 	 * @param openid openid
	 */
    void bindAccountWithOpenid(Long userId, String openid);
}
