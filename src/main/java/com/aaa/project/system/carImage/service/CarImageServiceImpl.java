package com.aaa.project.system.carImage.service;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.common.support.Convert;
import com.aaa.project.system.carImage.domain.CarImage;
import com.aaa.project.system.carImage.mapper.CarImageMapper;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

import static com.aaa.common.utils.file.FileUploadUtils.upload;
import static com.aaa.project.myconst.MyConst.CAR_IMAGE_Pre;

/**
 * 汽车图片 服务层实现
 *
 * @author aaa
 * @date 2019-04-19
 */
@Service
public class CarImageServiceImpl implements ICarImageService {
    @Autowired
    private CarImageMapper carImageMapper;

    /**
     * 查询汽车图片信息
     *
     * @param id 汽车图片ID
     * @return 汽车图片信息
     */
    @Override
    public CarImage selectCarImageById(Integer id) {
        return carImageMapper.selectCarImageById(id);
    }

    /**
     * 查询汽车图片列表
     *
     * @param carImage 汽车图片信息
     * @return 汽车图片集合
     */
    @Override
    public List<CarImage> selectCarImageList(CarImage carImage) {
        return carImageMapper.selectCarImageList(carImage);
    }

    /**
     * 新增汽车图片
     *
     * @param carImage 汽车图片信息
     * @return 结果
     */
    @Override
    public int insertCarImage(CarImage carImage) {
        return carImageMapper.insertCarImage(carImage);
    }

    /**
     * 修改汽车图片
     *
     * @param carImage 汽车图片信息
     * @return 结果
     */
    @Override
    public int updateCarImage(CarImage carImage) {
        return carImageMapper.updateCarImage(carImage);
    }

    /**
     * 删除汽车图片对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCarImageByIds(String ids) {
        return carImageMapper.deleteCarImageByIds(Convert.toStrArray(ids));
    }

    /**
     * 更新汽车图片信息
     *
     * @param carInfoId 唯一标识
     * @param file      文件
     * @return 受影响行数
     */
    @Override
    public String UpdateCarImageByCarInfoId(int carInfoId, MultipartFile file) throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException {
        //得到文件路径
        String url = CAR_IMAGE_Pre + upload(CAR_IMAGE_Pre, file, ".jpg");
        // 组合一个carImage对象
        CarImage carImage = new CarImage();
        carImage.setCarInfoId(carInfoId);
        carImage.setImageUrl(url);
        // 操作 1-首先判断是否已有信息
        List<CarImage> carImages = carImageMapper.selectCarImageListByCarInfoId(carInfoId);
        if (carImages.size() > 0) {
            //1.2-有 更新信息
            carImageMapper.updateCarImageByCarInfoId(carImage);
            return "更新成功";
        } else {
            // 1.1-没有 插入信息
            carImageMapper.insertCarImage(carImage);
            return "插入成功";
        }
    }

}
