package com.aaa.project.system.api;


import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.evaluate.domain.Evaluate;
import com.aaa.project.system.evaluate.service.EvaluateServiceImpl;
import com.aaa.project.system.store.service.IStoreService;
import com.aaa.project.system.store.service.StoreServiceImpl;
import com.aaa.project.system.storeService.domain.StoreService;
import com.aaa.project.system.storeService.service.StoreServiceServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;


/**
 * 门店接口
 */
@RestController
@RequestMapping("/api/store")
public class ApiStoreController {
    @Autowired
    private IStoreService storeService;

    @Autowired
    private StoreServiceServiceImpl storeServiceService;

    @Autowired
    private EvaluateServiceImpl evaluateService;

    /**
     * 业务列表
     *
     * @param storeId
     * @return 门店服务列表
     */
    @RequestMapping("/getServices")
    public AjaxResult getServices(@RequestParam(name = "storeId", required = false) String storeId) {
        List storeServices = storeServiceService.selectStoreServiceByStoreId(storeId);
        AjaxResult ajaxResult = new AjaxResult();
        ajaxResult.put("storeList", storeServices);
        return ajaxResult;
    }

    /**
     * 用户对门店的评价
     *
     * @param evaluate
     */
    @RequestMapping("/evaluate")
    public AjaxResult evaluate(@RequestParam(name = "evaluate", required = true) Evaluate evaluate) {
        evaluateService.insertEvaluate(evaluate);
        AjaxResult ajaxResult = new AjaxResult();
        ajaxResult.success("评价成功");
        return ajaxResult;
    }

    /**
     * 传入坐标，获得坐标附近门店列表
     *
     * @param posLng 经度
     * @param posLat 纬度
     * @return 结果
     */
    @RequestMapping("/aroundStoreList")
    public AjaxResult aroundStoreList(@RequestParam(name = "posLng", required = true) String posLng,
                                      @RequestParam(name = "posLat", required = true) String posLat) {

        //1-新建结果对象
        AjaxResult ajaxResult = new AjaxResult();
        //2-根据经纬度得到周围门店信息
        List<Map<String, Object>> aroundStoreList = storeService.searchAroundStore(posLng, posLat);
        //3-赋值
        ajaxResult.put("code",0);
        ajaxResult.put("aroundStoreList", aroundStoreList);
        //4-返回结果
        return ajaxResult;
    }

}
