package com.aaa.project.system.api;

import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.carInfo.domain.CarInfo;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

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
