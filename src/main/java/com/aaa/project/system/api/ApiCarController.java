package com.aaa.project.system.api;

import com.aaa.common.utils.file.FileUploadUtils;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.carInfo.domain.CarInfo;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * 车辆接口
 */
@RestController
@RequestMapping("/api/car")
public class ApiCarController {

    @RequestMapping(value = "/setCarInfo", method = RequestMethod.POST)
    public AjaxResult setCarInfo(@RequestBody CarInfo carInfo){
        AjaxResult ajaxResult = new AjaxResult();
        if(carInfo.getId() != null){
            ajaxResult.put("carInfo", carInfo);
        }
        return ajaxResult;
    }

}
