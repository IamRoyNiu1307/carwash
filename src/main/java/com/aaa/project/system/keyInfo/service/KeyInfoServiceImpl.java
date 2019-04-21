package com.aaa.project.system.keyInfo.service;

import com.aaa.common.support.Convert;
import com.aaa.project.system.keyInfo.domain.KeyInfo;
import com.aaa.project.system.keyInfo.mapper.KeyInfoMapper;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.aaa.project.myconst.MyConst.STATUS_KEY_STORED;
import static com.aaa.project.myconst.MyConst.STATUS_KEY_TAKED;

/**
 * 钥匙 服务层实现
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Service
public class KeyInfoServiceImpl implements IKeyInfoService 
{
	@Autowired
	private KeyInfoMapper keyInfoMapper;
	@Autowired
	private OrderMapper orderMapper;

	/**
     * 查询钥匙信息
     * 
     * @param id 钥匙ID
     * @return 钥匙信息
     */
    @Override
	public KeyInfo selectKeyInfoById(Integer id)
	{
	    return keyInfoMapper.selectKeyInfoById(id);
	}
	
	/**
     * 查询钥匙列表
     * 
     * @param keyInfo 钥匙信息
     * @return 钥匙集合
     */
	@Override
	public List<KeyInfo> selectKeyInfoList(KeyInfo keyInfo)
	{
	    return keyInfoMapper.selectKeyInfoList(keyInfo);
	}
	
    /**
     * 新增钥匙
     * 
     * @param keyInfo 钥匙信息
     * @return 结果
     */
	@Override
	public int insertKeyInfo(KeyInfo keyInfo)
	{
	    return keyInfoMapper.insertKeyInfo(keyInfo);
	}
	
	/**
     * 修改钥匙
     * 
     * @param keyInfo 钥匙信息
     * @return 结果
     */
	@Override
	public int updateKeyInfo(KeyInfo keyInfo)
	{
	    return keyInfoMapper.updateKeyInfo(keyInfo);
	}

	/**
     * 删除钥匙对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteKeyInfoByIds(String ids)
	{
		return keyInfoMapper.deleteKeyInfoByIds(Convert.toStrArray(ids));
	}

	/**
	 * 根据钥匙信息和钥匙柜id更新订单的钥匙信息
	 * @param keyInfo 钥匙信息
	 * @param uuid 钥匙柜id
	 * @return
	 */
	@Override
	public boolean updateKeyInfoByKeyInfo(KeyInfo keyInfo, String uuid, Order order){
		if(keyInfo==null){
			//新建一个钥匙信息
			KeyInfo keyInfo2=new KeyInfo();
			keyInfo2.setContainerId(uuid);
			keyInfo2.setStatusId(STATUS_KEY_STORED);
			//将新建的钥匙信息添加到数据库中
			keyInfoMapper.insertKeyInfo(keyInfo2);
			//将钥匙信息添加到订单中
			order.setKeyInfoId(keyInfo2.getId());
			//更新数据库中的订单信息
			orderMapper.updateOrder(order);
			return true;
		}else if(keyInfo.getStatusId().equals(STATUS_KEY_STORED)) {
				//判断钥匙信息上的钥匙柜id是否与传入的钥匙柜id相符合
				if(keyInfo.getContainerId().equals(uuid)){
					//如果钥匙柜id符合，则更改钥匙状态
					keyInfo.setStatusId(STATUS_KEY_TAKED);
					//更新钥匙信息
					keyInfoMapper.updateKeyInfo(keyInfo);
					//更改订单中的钥匙信息
					order.setKeyInfo(keyInfo);
					//更新订单信息
					orderMapper.updateOrder(order);
					return true;
				}else {
					return false;
				}
		}else if(keyInfo.getStatusId().equals(STATUS_KEY_TAKED)) {
			//更改钥匙柜id和钥匙状态
			keyInfo.setContainerId(uuid);
			keyInfo.setStatusId(STATUS_KEY_STORED);
			//更新钥匙信息
			keyInfoMapper.updateKeyInfo(keyInfo);
			//更改订单中的钥匙信息
			order.setKeyInfo(keyInfo);
			//更新订单信息
			orderMapper.updateOrder(order);
			return true;
		}
		return true;
	};


}
