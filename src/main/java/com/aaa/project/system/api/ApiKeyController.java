package com.aaa.project.system.api;

import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.keyContainer.domain.KeyContainer;
import com.aaa.project.system.keyContainer.service.IKeyContainerService;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 钥匙接口
 */
@RestController
@RequestMapping("/api/key")
public class ApiKeyController {
    @Autowired
    private IKeyContainerService keyContainerService;


    @RequiresGuest
    @RequestMapping("/aroundContainer")
    public AjaxResult aroundContainer(@RequestParam(name = "posLng",required = true) String posLng,
                                      @RequestParam(name = "posLat",required = true) String posLat) {
        AjaxResult ajaxResult = new AjaxResult();
        List<KeyContainer> aroundContainerList = keyContainerService.getAroundContainer(posLng, posLat);
        ajaxResult.put("aroundContainerList",aroundContainerList);
        return ajaxResult;
    }
}
