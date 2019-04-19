package com.aaa.project.system.consumerAccount.service;

import com.aaa.project.system.consumerAccount.domain.ConsumerAccount;
import java.util.List;

/**
 * 消费者账号 服务层
 * 
 * @author aaa
 * @date 2019-04-18
 */
public interface IConsumerAccountService 
{
	/**
     * 查询消费者账号信息
     * 
     * @param id 消费者账号ID
     * @return 消费者账号信息
     */
	public ConsumerAccount selectConsumerAccountById(Integer id);

	public ConsumerAccount selectConsumerAccountByAccount(String account);
	
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
     * 删除消费者账号信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteConsumerAccountByIds(String ids);
	
}
