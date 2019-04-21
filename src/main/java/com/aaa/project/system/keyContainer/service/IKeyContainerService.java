package com.aaa.project.system.keyContainer.service;

import com.aaa.project.system.keyContainer.domain.KeyContainer;

import java.util.List;
import java.util.Map;

/**
 * 钥匙柜 服务层
 *
 * @author aaa
 * @date 2019-04-18
 */
public interface IKeyContainerService {
    /**
     * 查询钥匙柜信息
     *
     * @param id 钥匙柜ID
     * @return 钥匙柜信息
     */
    public KeyContainer selectKeyContainerById(Integer id);

    /**
     * 查询钥匙柜列表
     *
     * @param keyContainer 钥匙柜信息
     * @return 钥匙柜集合
     */
    public List<KeyContainer> selectKeyContainerList(KeyContainer keyContainer);

    /**
     * 新增钥匙柜
     *
     * @param keyContainer 钥匙柜信息
     * @return 结果
     */
    public int insertKeyContainer(KeyContainer keyContainer);

    /**
     * 修改钥匙柜
     *
     * @param keyContainer 钥匙柜信息
     * @return 结果
     */
    public int updateKeyContainer(KeyContainer keyContainer);

    /**
     * 删除钥匙柜信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteKeyContainerByIds(String ids);

    /**
     * 根据坐标获取周边钥匙柜信息
     *
     * @param posLng
     * @param posLat
     * @return
     */
    List<Map<String, Object>> getAroundContainer(String posLng, String posLat);
}
