package com.aaa.project.system.keyContainer.service;

import com.aaa.common.support.Convert;
import com.aaa.common.utils.ReGeo;
import com.aaa.project.system.cities.domain.Cities;
import com.aaa.project.system.cities.mapper.CitiesMapper;
import com.aaa.project.system.keyContainer.domain.KeyContainer;
import com.aaa.project.system.keyContainer.mapper.KeyContainerMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 钥匙柜 服务层实现
 *
 * @author aaa
 * @date 2019-04-18
 */
@Service
public class KeyContainerServiceImpl implements IKeyContainerService {
    private static final Logger log = LoggerFactory.getLogger(KeyContainerServiceImpl.class);

    @Autowired
    private KeyContainerMapper keyContainerMapper;
    @Autowired
    private CitiesMapper citiesMapper;

    /**
     * 查询钥匙柜信息
     *
     * @param id 钥匙柜ID
     * @return 钥匙柜信息
     */
    @Override
    public KeyContainer selectKeyContainerById(Integer id) {
        return keyContainerMapper.selectKeyContainerById(id);
    }

    /**
     * 查询钥匙柜列表
     *
     * @param keyContainer 钥匙柜信息
     * @return 钥匙柜集合
     */
    @Override
    public List<KeyContainer> selectKeyContainerList(KeyContainer keyContainer) {
        return keyContainerMapper.selectKeyContainerList(keyContainer);
    }

    /**
     * 新增钥匙柜
     *
     * @param keyContainer 钥匙柜信息
     * @return 结果
     */
    @Override
    public int insertKeyContainer(KeyContainer keyContainer) {
        return keyContainerMapper.insertKeyContainer(keyContainer);
    }

    /**
     * 修改钥匙柜
     *
     * @param keyContainer 钥匙柜信息
     * @return 结果
     */
    @Override
    public int updateKeyContainer(KeyContainer keyContainer) {
        return keyContainerMapper.updateKeyContainer(keyContainer);
    }

    /**
     * 删除钥匙柜对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteKeyContainerByIds(String ids) {
        return keyContainerMapper.deleteKeyContainerByIds(Convert.toStrArray(ids));
    }

    @Override
    public List<KeyContainer> getAroundContainer(String posLng, String posLat) {

        List<KeyContainer> containerList = new ArrayList<>();

        //解析经纬度，获得该经纬度所在的城市
        Map map = ReGeo.reGeo(posLng, posLat);
        // 得到结果
        String city=map.get("city").toString();
        log.info("省份" + city);
        //查找从城市表中查询城市编号
        Cities cities = citiesMapper.selectCityInfoByCity(city);
        System.out.println(cities.getCityid());
        //根据city编号查找同城所有的钥匙柜

        //遍历同城所有的钥匙柜，距离小于阈值的放入containerList中

        return null;
    }

}
