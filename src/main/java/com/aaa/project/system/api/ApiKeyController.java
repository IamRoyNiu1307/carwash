package com.aaa.project.system.api;

import com.aaa.framework.web.domain.AjaxResult;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 钥匙接口
 */
@RestController
@RequestMapping("/api/key")
public class ApiKeyController {

    @RequiresGuest
    @RequestMapping("/aroundContainer")
    public AjaxResult aroundContainer() {
        AjaxResult ajaxResult = new AjaxResult();
        ajaxResult.put("code", 100);
        ajaxResult.put("msg", "这是一个描述");
        return ajaxResult;
    }
}
