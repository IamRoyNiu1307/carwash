package com.aaa.project.system.carImage.service;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.project.system.carImage.domain.CarImage;
import com.sun.corba.se.spi.presentation.rmi.IDLNameTranslator;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * 汽车图片 服务层
 *
 * @author aaa
 * @date 2019-04-19
 */
public interface ICarImageService {
    /**
     * 查询汽车图片信息
     *
     * @param id 汽车图片ID
     * @return 汽车图片信息
     */
    public CarImage selectCarImageById(Integer id);

    /**
     * 查询汽车图片列表
     *
     * @param carImage 汽车图片信息
     * @return 汽车图片集合
     */
    public List<CarImage> selectCarImageList(CarImage carImage);

    /**
     * 新增汽车图片
     *
     * @param carImage 汽车图片信息
     * @return 结果
     */
    public int insertCarImage(CarImage carImage);

    /**
     * 修改汽车图片
     *
     * @param carImage 汽车图片信息
     * @return 结果
     */
    public int updateCarImage(CarImage carImage);

    /**
     * 删除汽车图片信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteCarImageByIds(String ids);

    /**
     * 更新车辆图片信息
     *
     * @param carInfoId 唯一标识
     * @param file      文件
     * @return 影响行数
     */
    public String UpdateCarImageByCarInfoId(int carInfoId, MultipartFile file) throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException;
}
