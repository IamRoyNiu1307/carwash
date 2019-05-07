package com.aaa.project.system.store.service;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.common.support.Convert;
import com.aaa.common.utils.Distance;
import com.aaa.common.utils.ReGeo;
import com.aaa.project.system.cities.domain.Cities;
import com.aaa.project.system.cities.mapper.CitiesMapper;
import com.aaa.project.system.store.domain.Store;
import com.aaa.project.system.store.mapper.StoreMapper;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.*;

import static com.aaa.common.utils.file.FileUploadUtils.upload;
import static com.aaa.project.myconst.MyConst.*;


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
     * 根据登陆名查询店铺信息
     *
     * @param loginName
     * @return 结果
     */
    @Override
    public Store selectStoreByLoginName(String loginName) {
        return storeMapper.selectStoreByLoginName(loginName);
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
    public int insertStore(Store store, MultipartFile file) throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException {
        //得到文件路径
        String url = STORE_ICON_IMAGE_DIR + upload(UPLOAD_STORE_ICON, file, ".jpg");
        //处理门店信息将 province 和city 变为 code
        Cities cities = citiesMapper.selectCityInfoByCity(store.getCityid());
        //重新设值
        store.setCityid(cities.getCityid());
        store.setProvinceid(cities.getProvinceid());
        //设置路径值
        store.setFaviconPath(url);
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

    /**
     * 根据storeId查询门店名称
     *
     * @param storeId 门店编号
     * @return 门店名称
     */
    @Override
    public String selectStoreNameByStoreId(String storeId) {
        return storeMapper.selectStoreNameByStoreId(storeId);
    }

    ;

    /**
     * 更新门店信息
     *
     * @param ids
     * @return
     */
    @Override
    public int updateStoreById(String ids) {
        //组合一个store
        Store store = new Store();
        store.setId(Convert.toInt(ids));
        store.setStatusId(100);
        storeMapper.updateStore(store);
        return 0;
    }

}
