package com.aaa.project.system.storeReviewed.service;

import com.aaa.project.system.store.domain.Store;

import java.util.List;

public interface IStoreReviewService {

    /**
     * 查询门店列表
     *
     * @param store 门店信息
     * @return 门店集合
     */
    public List<Store> selectStoreList(Store store);

    /**
     * 审批同意/拒绝改变状态
     *
     * @param id 门店信息
     * @return 结果
     */
    public int updateStoreStatusById(int id,int statusID);

}
