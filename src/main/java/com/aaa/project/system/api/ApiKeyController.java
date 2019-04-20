package com.aaa.project.system.api;

import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.project.system.keyContainer.service.IKeyContainerService;
import com.aaa.project.system.keyInfo.service.IKeyInfoService;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.service.IOrderService;
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
    @Autowired
    private IOrderService orderService;
    @Autowired
    private IKeyInfoService keyInfoService;

    /**
     * 获取周边钥匙柜信息
     *
     * @param posLng 经度
     * @param posLat 纬度
     * @return 结果
     */
    @RequestMapping("/aroundContainer")
    public AjaxResult aroundContainer(@RequestParam(name = "posLng", required = true) String posLng,
                                      @RequestParam(name = "posLat", required = true) String posLat) {
        //1-新建结果对象
        AjaxResult ajaxResult = new AjaxResult();
        //2-根据经纬度得到周围钥匙柜
        List<Map<String, Object>> aroundContainerList = keyContainerService.getAroundContainer(posLng, posLat);
        //3-赋值
        ajaxResult.put("code",0);
        ajaxResult.put("aroundContainerList", aroundContainerList);
        //4-返回结果
        return ajaxResult;
    }

    /**
     * 根据钥匙柜id和订单id进行钥匙寄存，更改订单信息
     * @param uuid 钥匙柜id
     * @param orderId 订单id
     * @return
     */
    @RequestMapping("/storeKey")
    public AjaxResult storeKey(@RequestParam(name = "uuid",required = true)String uuid,
                               @RequestParam(name = "orderId",required = true)String orderId){
        //根据订单id查找订单
        Order order = orderService.selectOrderByOrderId(orderId);
        //根据钥匙柜信息、订单信息、钥匙信息进行订单更新
        keyInfoService.updateKeyInfoByKeyInfo(order.getKeyInfo(),uuid,order);
        return AjaxResult.success();
    }
}
