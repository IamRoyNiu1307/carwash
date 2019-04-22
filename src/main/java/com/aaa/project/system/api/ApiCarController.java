package com.aaa.project.system.api;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.carImage.service.ICarImageService;
import com.aaa.project.system.carInfo.domain.CarInfo;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * 车辆接口
 */
@RestController
@RequestMapping("/api/car")
public class ApiCarController {

    @Autowired
    private ICarImageService carImageService;

    /**
     * 新增或修改车辆信息
     * @param carInfo
     * @return
     */
    @RequestMapping(value = "/setCarInfo", method = RequestMethod.POST)
    public AjaxResult setCarInfo(@RequestBody CarInfo carInfo) {
        AjaxResult ajaxResult = new AjaxResult();
        if (carInfo.getId() != null) {
            ajaxResult.put("carInfo", carInfo);
        }
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
}