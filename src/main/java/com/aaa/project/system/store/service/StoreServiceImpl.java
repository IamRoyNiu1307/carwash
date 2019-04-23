package com.aaa.project.system.store.service;

import java.util.*;

import com.aaa.common.utils.Distance;
import com.aaa.common.utils.ReGeo;
import com.aaa.project.system.cities.domain.Cities;
import com.aaa.project.system.cities.mapper.CitiesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.aaa.project.system.store.mapper.StoreMapper;
import com.aaa.project.system.store.domain.Store;
import com.aaa.common.support.Convert;

import static com.aaa.project.myconst.MyConst.DISTANCE_TYPE_STRAIGHT;


/**
 * 门店 服务层实现
 *
 * @author aaa
 * @date 2019-04-18
 */
@Service
public class StoreServiceImpl implements IStoreService {
    @Autowired
    private CitiesMapper citiesMapper;

    @Autowired
    private StoreMapper storeMapper;

    /**
     * 查询门店信息
     *
     * @param id 门店ID
     * @return 门店信息
     */
    @Override
    public Store selectStoreById(Integer id) {
        return storeMapper.selectStoreById(id);
    }

    /**
     * 查询门店列表
     *
     * @param store 门店信息
     * @return 门店集合
     */
    @Override
    public List<Store> selectStoreList(Store store) {
        return storeMapper.selectStoreList(store);
    }

    @Override
    public List<Store> selectStoreByStatusId() {
        return storeMapper.selectStoreByStatusId();
    }

    /**
     * 新增门店
     *
     * @param store 门店信息
     * @return 结果
     */
    @Override
    public int insertStore(Store store) {
        return storeMapper.insertStore(store);
    }

    /**
     * 修改门店
     *
     * @param store 门店信息
     * @return 结果
     */
    @Override
    public int updateStore(Store store) {
        return storeMapper.updateStore(store);
    }

    /**
     * 删除门店对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStoreByIds(String ids) {
        return storeMapper.deleteStoreByIds(Convert.toStrArray(ids));
    }

    @Override
    public Store selectByStoreId(String storeId) {
        return storeMapper.selectByStoreId(storeId);
    }

    /**
     * 查询附近门店信息,按照距离排序
     *
     * @param posLng
     * @param posLat
     * @return
     */
    @Override
    public List<Map<String, Object>> searchAroundStore(String posLng, String posLat) {
        //逆地址解析获取城市名称
        Map map = ReGeo.reGeo(posLng, posLat);
        //查找从城市表中查询城市编号
        Cities cities = citiesMapper.selectCityInfoByCity(map.get("city").toString());
        //根据city编号查找同城所有的洗车店
        List<Store> stores = storeMapper.selectStoreByCityId(cities.getCityid());
        //得到洗车店到目标点距离

        List<String> storePom = new ArrayList<>(); //门店坐标

        for (Store each : stores) {
            String pom = each.getPosLng() + "," + each.getPosLat(); //组合数据
            storePom.add(pom);
        }
        List<Integer> distanceList = Distance.getDistanceList(storePom, posLng + "," + posLat, DISTANCE_TYPE_STRAIGHT); //直线距离
        List<Map<String, Object>> data = new ArrayList<>();
        for (int i = 0; i < distanceList.size(); i++) {
            Map dataMap = new HashMap();
            dataMap.put("store", stores.get(i));
            dataMap.put("distance", distanceList.get(i));
            data.add(dataMap);
        }
        //data排序 按照距离
        Collections.sort(data, new Comparator<Map<String, Object>>() {
            @Override
            public int compare(Map<String, Object> o1, Map<String, Object> o2) {
                return (Integer) o1.get("distance") - (Integer) o2.get("distance");
            }
        });
        return data;
    }

}
