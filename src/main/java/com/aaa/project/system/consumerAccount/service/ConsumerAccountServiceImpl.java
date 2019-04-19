package com.aaa.project.system.consumerAccount.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.consumerAccount.mapper.ConsumerAccountMapper;
import com.aaa.project.system.consumerAccount.domain.ConsumerAccount;
import com.aaa.project.system.consumerAccount.service.IConsumerAccountService;
import com.aaa.common.support.Convert;

/**
 * 消费者账号 服务层实现
 * 
 * @author aaa
 * @date 2019-04-18
 */
@Service
public class ConsumerAccountServiceImpl implements IConsumerAccountService 
{
	@Autowired
	private ConsumerAccountMapper consumerAccountMapper;

	/**
     * 查询消费者账号信息
     * 
     * @param id 消费者账号ID
     * @return 消费者账号信息
     */
    @Override
	public ConsumerAccount selectConsumerAccountById(Integer id)
	{
	    return consumerAccountMapper.selectConsumerAccountById(id);
	}

	@Override
	public ConsumerAccount selectConsumerAccountByAccount(String account) {
		return consumerAccountMapper.selectConsumerAccountByAccount(account);
	}

	/**
     * 查询消费者账号列表
     * 
     * @param consumerAccount 消费者账号信息
     * @return 消费者账号集合
     */
	@Override
	public List<ConsumerAccount> selectConsumerAccountList(ConsumerAccount consumerAccount)
	{
	    return consumerAccountMapper.selectConsumerAccountList(consumerAccount);
	}
	
    /**
     * 新增消费者账号
     * 
     * @param consumerAccount 消费者账号信息
     * @return 结果
     */
	@Override
	public int insertConsumerAccount(ConsumerAccount consumerAccount)
	{
	    return consumerAccountMapper.insertConsumerAccount(consumerAccount);
	}
	
	/**
     * 修改消费者账号
     * 
     * @param consumerAccount 消费者账号信息
     * @return 结果
     */
	@Override
	public int updateConsumerAccount(ConsumerAccount consumerAccount)
	{
	    return consumerAccountMapper.updateConsumerAccount(consumerAccount);
	}

	/**
     * 删除消费者账号对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteConsumerAccountByIds(String ids)
	{
		return consumerAccountMapper.deleteConsumerAccountByIds(Convert.toStrArray(ids));
	}

	/**
	 * 根据账号查找实体
	 * @param account 顾客账号
	 * @return
	 */
	@Override
	public ConsumerAccount selectConsumerAccountByAccount(String account) {
		return consumerAccountMapper.selectConsumerAccountByAccount(account);
	}
}
