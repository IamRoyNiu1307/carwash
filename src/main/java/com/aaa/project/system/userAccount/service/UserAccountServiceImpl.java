package com.aaa.project.system.userAccount.service;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.common.support.Convert;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.mapper.UserAccountMapper;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

import static com.aaa.common.utils.file.FileUploadUtils.upload;
import static com.aaa.project.myconst.MyConst.DRIVING_LICENCE_ICON_IMG;
import static com.aaa.project.myconst.MyConst.DRIVING_LICENCE_IMG;

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

	@Override
	public UserAccount selectUserAccountByUserId(Integer userId) {
		return userAccountMapper.selectUserAccountByUserId(userId);
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
	public int insertUserAccount(UserAccount userAccount, MultipartFile drivingLicence1,MultipartFile drivingLicence2)throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException
	{
		//得到用户驾照图片路径
		String url1=DRIVING_LICENCE_ICON_IMG+upload(DRIVING_LICENCE_IMG, drivingLicence1, ".jpg");
		String url2=DRIVING_LICENCE_ICON_IMG+upload(DRIVING_LICENCE_IMG, drivingLicence2, ".jpg");
		userAccount.setDrivingLicence1(url1);
		userAccount.setDrivingLicence2(url2);
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
