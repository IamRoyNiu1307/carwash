package com.aaa.project.system.consumerAccount.mapper;

import com.aaa.project.system.consumerAccount.domain.ConsumerAccount;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 消费者账号 数据层
 * 
 * @author aaa
 * @date 2019-04-18
 */
public interface ConsumerAccountMapper 
{
	/**
     * 查询消费者账号信息
     * 
     * @param id 消费者账号ID
     * @return 消费者账号信息
     */
	public ConsumerAccount selectConsumerAccountById(Integer id);

	/**
     * 查询消费者账号列表
     * 
     * @param consumerAccount 消费者账号信息
     * @return 消费者账号集合
     */
	public List<ConsumerAccount> selectConsumerAccountList(ConsumerAccount consumerAccount);
	
	/**
     * 新增消费者账号
     * 
     * @param consumerAccount 消费者账号信息
     * @return 结果
     */
	public int insertConsumerAccount(ConsumerAccount consumerAccount);
	
	/**
     * 修改消费者账号
     * 
     * @param consumerAccount 消费者账号信息
     * @return 结果
     */
	public int updateConsumerAccount(ConsumerAccount consumerAccount);
	
	/**
     * 删除消费者账号
     * 
     * @param id 消费者账号ID
     * @return 结果
     */
	public int deleteConsumerAccountById(Integer id);
	
	/**
     * 批量删除消费者账号
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteConsumerAccountByIds(String[] ids);

	/**
	 * 根据账号查找实体
	 * @param consumerAccount 顾客账号
	 * @return
	 */
	ConsumerAccount selectConsumerAccountByAccount(String consumerAccount);

	/**
	 * 根据openid查找绑定的账号
	 * @param openid
	 * @return
	 */
	void cleanOpenid(String openid);

	/**
	 * 绑定账号和openid
	 * @param account
	 * @param openid
	 */
	void bindAccountWithOpenid(@Param("account") String account,@Param("openid") String openid);

	/**
	 * 根据openid查找该openid绑定的账号
	 * @param openid
	 * @return
	 */
	ConsumerAccount selectAccountByOpenid(String openid);
}