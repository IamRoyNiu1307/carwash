package com.aaa.project.system.api;


import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.evaluate.domain.Evaluate;
import com.aaa.project.system.evaluate.service.EvaluateServiceImpl;
import com.aaa.project.system.storeService.domain.StoreService;
import com.aaa.project.system.storeService.service.StoreServiceServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * 门店接口
 */
@RestController
@RequestMapping("/api/store")
public class ApiStoreController {

    @Autowired
    private StoreServiceServiceImpl storeServiceService;

    @Autowired
    private EvaluateServiceImpl evaluateService;

    /**
     * 业务列表
     * @param storeId
     * @return 门店服务列表
     */
    @RequestMapping("/getServices")
    public AjaxResult getServices(@RequestParam(name="storeId",required=false)String storeId){
        List storeServices = storeServiceService.selectStoreServiceByStoreId(storeId);
        AjaxResult ajaxResult = new AjaxResult();
        ajaxResult.put("storeList",storeServices);
        return ajaxResult;
    }

    /**
     * 用户对门店的评价
     * @param evaluate
     */
    @RequestMapping("/evaluate")
    public void evaluate(@RequestParam(name="evaluate",required = true) Evaluate evaluate){
        evaluateService.insertEvaluate(evaluate);
    }

}
