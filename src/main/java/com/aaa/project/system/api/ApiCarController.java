package com.aaa.project.system.api;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.carImage.service.ICarImageService;
import com.aaa.project.system.carInfo.domain.CarInfo;
import com.aaa.project.system.carInfo.service.ICarInfoService;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * 车辆接口
 */
@RestController
@RequestMapping("/api/car")
public class ApiCarController {

    @Autowired
    private ICarImageService carImageService;
    @Autowired
    private ICarInfoService carInfoService;

    /**
     * 新增或修改车辆信息
     * @param carInfo 车辆信息对象
     * @return 结果
     */
    @RequestMapping(value = "/setCarInfo", method = RequestMethod.POST)
    public AjaxResult setCarInfo(@RequestBody CarInfo carInfo) {
        AjaxResult ajaxResult = new AjaxResult();
        if (carInfo.getId() == null) {
            carInfoService.insertCarInfo(carInfo);
            ajaxResult.put("msg","添加成功！");
        } else {
            carInfoService.updateCarInfo(carInfo);
            ajaxResult.put("msg","修改成功！");
        }

        ajaxResult.put("code",0);
        ajaxResult.put("carInfo",carInfo);
        return ajaxResult;
    }

    /**
     * 设置车辆/车位照片
     *
     * @param carInfoId 车辆信息id
     * @param file      汽车路径
     * @return 结果
     */
    @RequestMapping("/setCarImages")
    public AjaxResult setCarImages(@RequestParam(value = "carInfoId") int carInfoId, @RequestParam(value = "file") MultipartFile file) throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException {
        AjaxResult ajaxResult = new AjaxResult();
        //更新信息
        String result = carImageService.UpdateCarImageByCarInfoId(carInfoId, file);
        ajaxResult.put("code", 0);
        ajaxResult.put("msg", result);
        return ajaxResult;
    }

    /**
     * 根据账号查询该账号下添加的车辆信息
     * @param consumerAccount 账号
     * @return
     */
    @RequestMapping("/getCarList")
    public AjaxResult getCarList(@RequestParam(value = "account")String consumerAccount){
        AjaxResult ajaxResult = new AjaxResult();
        List<CarInfo> carInfoList = carInfoService.selectCarInfoByConsumerAccount(consumerAccount);
        ajaxResult.put("code",0);
        ajaxResult.put("carInfoList",carInfoList);
        return ajaxResult;
    }

    /**
     * 根据车辆信息编号获取实体
     * @param carInfoId 车辆信息id
     * @return 实体
     */
    @RequestMapping("/getCarInfo")
    public AjaxResult getCarInfo(@RequestParam(value = "carInfoId") int carInfoId){
        AjaxResult ajaxResult = new AjaxResult();
        CarInfo carInfo = carInfoService.selectCarInfoById(carInfoId);
        ajaxResult.put("code",0);
        ajaxResult.put("carInfo",carInfo);
        return ajaxResult;

    }

    /**
     * 获取用户默认车辆
     * @param consumerAccount 用户账号
     * @return 默认车辆
     */
    @RequestMapping("/getDefaultCar")
    public AjaxResult getDefaultCar(@RequestParam(value = "account")String consumerAccount){
        AjaxResult ajaxResult = new AjaxResult();
        CarInfo carInfo = carInfoService.selectDefaultCarInfoByAccount(consumerAccount);
        ajaxResult.put("code",0);
        ajaxResult.put("carInfo",carInfo);
        return ajaxResult;
    }
}