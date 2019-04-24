package com.aaa.project.system.store.service;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.project.system.store.domain.Store;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * 门店 服务层
 *
 * @author aaa
 * @date 2019-04-18
 */
public interface IStoreService {
    /**
     * 查询门店信息
     *
     * @param id 门店ID
     * @return 门店信息
     */
    public Store selectStoreById(Integer id);

    /**
     * 查询门店列表
     *
     * @param store 门店信息
     * @return 门店集合
     */
    public List<Store> selectStoreList(Store store);

    /**
     *
     * 查询可增加业务的门店
     * @return 门店列表
     */
    public List<Store> selectStoreByStatusId();

    /**
     *  新增门店
     * @param store  门店信息
     * @param file 门店图标
     * @return
     */
    public int insertStore(Store store , MultipartFile file) throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException;

    /**
     * 修改门店
     *
     * @param store 门店信息
     * @return 结果
     */
    public int updateStore(Store store);

    /**
     * 删除门店信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStoreByIds(String ids);

    /**
     * 根据storeId查询门店
     * @param storeId 门店编号
     * @return
     */
    Store selectByStoreId(String storeId);

    /**
     * 查找周围门店
     *
     * @param posLng
     * @param posLat
     * @return
     */
    public List<Map<String, Object>> searchAroundStore(String posLng, String posLat);

}
