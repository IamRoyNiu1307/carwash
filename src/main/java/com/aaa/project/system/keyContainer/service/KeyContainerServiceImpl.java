package com.aaa.project.system.keyContainer.service;

import com.aaa.common.support.Convert;
import com.aaa.common.utils.Distance;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.aaa.project.myconst.MyConst.GET_DISTANCE_TYPE_CAR;
import static com.aaa.project.myconst.MyConst.MAX_CONTAINER_DISTANCE;

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

    /**
     * 查询距离离目标距离低于阈值的钥匙柜信息
     *
     * @param posLng
     * @param posLat
     * @return 结果
     */
    @Override
    public List<Map<String, Object>> getAroundContainer(String posLng, String posLat) {
        //低于阈值的钥匙柜列表
        List<KeyContainer> containerList = new ArrayList<>();

        //解析经纬度，获得该经纬度所在的城市
        Map map = ReGeo.reGeo(posLng, posLat);
        //查找从城市表中查询城市编号
        Cities cities = citiesMapper.selectCityInfoByCity(map.get("city").toString());
        //根据city编号查找同城所有的钥匙柜
        List<KeyContainer> keyContainers = keyContainerMapper.selectKeyContainerListByCityId(cities.getCityid());
        //遍历同城所有的钥匙柜，距离小于阈值的放入containerList中
        // 1-将钥匙柜经纬度组合得到信息放到新的list
        List<String> keyContainerPom = new ArrayList<>();
        for (KeyContainer keyContainer : keyContainers) {
            //组合数据
            String pom = keyContainer.getPosLng() + "," + keyContainer.getPosLat();
            keyContainerPom.add(pom);
        }
        // 2-得到每个钥匙柜子到目标点距离数据
        List<Integer> distanceList = Distance.getDistanceList(keyContainerPom, posLng + "," + posLat, GET_DISTANCE_TYPE_CAR);
        //list存放钥匙柜信息，和到用户距离信息
        List<Map<String, Object>> data = new ArrayList<>();
        for (int i = 0; i < keyContainers.size(); i++) {
            if (distanceList.get(i) > MAX_CONTAINER_DISTANCE)
                continue;
            //存放钥匙柜和距离
            Map dataMap = new HashMap();
            dataMap.put("keyContainer", keyContainers.get(i));
            dataMap.put("distance", distanceList.get(i));
            data.add(dataMap);
        }
        return data;
    }

}
