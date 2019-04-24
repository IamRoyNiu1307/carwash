package com.aaa.project.system.storeReviewed.service;

import com.aaa.project.system.store.domain.Store;
import com.aaa.project.system.store.mapper.StoreMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IStoreReviewServiceImpl implements IStoreReviewService {
    @Autowired
    private StoreMapper storeMapper;

    /**
     * 查询所有的门店状态为未审核的信息
     *
     * @param store 门店信息
     * @return
     */
    @Override
    public List<Store> selectStoreList(Store store) {
        store.setStatusId(100);
        return storeMapper.selectStoreList(store);
    }

    @Override
    public int updateStoreStatusById(int id, int statusID) {
        Store store = new Store();
        //设置store值
        store.setId(id);
        store.setStatusId(statusID);
        System.out.println(store);
        return storeMapper.updateStore(store);
    }
}
