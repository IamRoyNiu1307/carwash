package com.aaa.project.system.userAccount.service;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.common.support.Convert;
import com.aaa.framework.config.FileUploadConfig;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.mapper.UserAccountMapper;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

import static com.aaa.common.utils.file.FileUploadUtils.upload;

/**
 * 用户 服务层实现
 *
 * @author aaa
 * @date 2019-04-23
 */
@Service
public class UserAccountServiceImpl implements IUserAccountService {
    @Autowired
    private UserAccountMapper userAccountMapper;
    @Autowired
    private FileUploadConfig config;

    /**
     * 查询用户信息
     *
     * @param id 用户ID
     * @return 用户信息
     */
    @Override
    public UserAccount selectUserAccountById(Integer id) {
        return userAccountMapper.selectUserAccountById(id);
    }

    /**
     * 查询用户信息
     *
     * @param userId 用户id
     * @return 用户信息
     */
    @Override
    public UserAccount selectUserAccountByUserId(Long userId) {
        return userAccountMapper.selectUserAccountByUserId(userId);
    }

    /**
     * 查询 storeId
     *
     * @param openId 唯一openid
     * @return storeId
     */
    @Override
    public String selectStoreIdByOpenId(String openId) {
        return userAccountMapper.selectStoreIdByOpenId(openId);
    }

    /**
     * 查询用户列表
     *
     * @param userAccount 用户信息
     * @return 用户集合
     */
    @Override
    public List<UserAccount> selectUserAccountList(UserAccount userAccount) {
        return userAccountMapper.selectUserAccountList(userAccount);
    }

    /**
     * 查询userAccount
     * @param list 店
     * @return userAccount
     */
    @Override
    public List<UserAccount> selectUserAccountByStoreId(List list) {
        return userAccountMapper.selectUserAccountByStoreId(list);
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
	    if(drivingLicence1!=null&&drivingLicence2!=null){
            //得到用户驾照图片路径
            String url1=config.getDrivingLicenceImgDir()+upload(config.getDrivingLicenceImg(), drivingLicence1, ".jpg");
            String url2=config.getDrivingLicenceImgDir()+upload(config.getDrivingLicenceImg(), drivingLicence2, ".jpg");
            userAccount.setDrivingLicence1(url1);
            userAccount.setDrivingLicence2(url2);
        }
		return userAccountMapper.insertUserAccount(userAccount);
	}
	
	/**
    @Override
    public int insertUserAccount(UserAccount userAccount) {
        return userAccountMapper.insertUserAccount(userAccount);
    }

    /**
     * 修改用户
     *
     * @param userAccount 用户信息
     * @return 结果
     */
    @Override
    public int updateUserAccount(UserAccount userAccount) {
        return userAccountMapper.updateUserAccount(userAccount);
    }

    /**
     * 删除用户对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteUserAccountByIds(String ids) {
        return userAccountMapper.deleteUserAccountByIds(Convert.toStrArray(ids));
    }

    /**
     * 根据userId查询店铺Id
     * @param userId
     * @return 店铺Id
     */
    @Override
    public String selectStoreIdByUserId(Long userId){return userAccountMapper.selectStoreIdByUserId(userId);};

    /**
     * 清空该openid的绑定信息
     * @param openid
     */
    @Override
    public void cleanOpenid(String openid) {
        userAccountMapper.cleanOpenid(openid);
    }

    /**
     * 绑定openid和account
     * @param userId userId
     * @param openid openid
     */
    @Override
    public void bindAccountWithOpenid(Long userId, String openid) {
        this.cleanOpenid(openid);
        userAccountMapper.bindAccountWithOpenid(userId,openid);
    }
}
