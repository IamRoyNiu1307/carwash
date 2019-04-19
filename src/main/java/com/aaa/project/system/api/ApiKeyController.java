package com.aaa.project.system.api;

import com.aaa.common.support.Convert;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.keyContainer.domain.KeyContainer;
import com.aaa.project.system.keyContainer.service.IKeyContainerService;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 钥匙接口
 */
@RestController
@RequestMapping("/api/key")
public class ApiKeyController {
    @Autowired
    private IKeyContainerService keyContainerService;

    /**
     * 解析地址获取周围钥匙柜
     *
     * @param posLng
     * @param posLat
     * @return 钥匙柜集合
     */
    @RequestMapping("/aroundContainer")
    public AjaxResult aroundContainer(@RequestParam(name = "posLng", required = true) String posLng,
                                      @RequestParam(name = "posLat", required = true) String posLat) {
        //1-新建结果对象
        AjaxResult ajaxResult = new AjaxResult();
        //2-根据经纬度得到周围钥匙柜
        List<Map<String, Object>> aroundContainerList = keyContainerService.getAroundContainer(posLng, posLat);
        //3-赋值
        ajaxResult.put("aroundContainerList", aroundContainerList);
        //4-返回结果
        return ajaxResult;
    }
}