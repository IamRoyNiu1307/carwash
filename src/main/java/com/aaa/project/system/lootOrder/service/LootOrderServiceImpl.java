package com.aaa.project.system.lootOrder.service;

import com.aaa.common.utils.Distance;
import com.aaa.common.utils.Geo;
import com.aaa.common.utils.security.ShiroUtils;
import com.aaa.project.system.order.domain.Order;
import com.aaa.project.system.order.mapper.OrderMapper;
import com.aaa.project.system.orderAmount.domain.OrderAmount;
import com.aaa.project.system.orderAmount.mapper.OrderAmountMapper;
import com.aaa.project.system.orderService.domain.OrderService;
import com.aaa.project.system.orderService.mapper.OrderServiceMapper;
import com.aaa.project.system.store.domain.Store;
import com.aaa.project.system.store.mapper.StoreMapper;
import com.aaa.project.system.storeService.mapper.StoreServiceMapper;
import com.aaa.project.system.userAccount.domain.UserAccount;
import com.aaa.project.system.userAccount.mapper.UserAccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

import static com.aaa.project.myconst.MyConst.DISTANCE_TYPE_CAR;

@Service
public class LootOrderServiceImpl implements ILootOrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private OrderServiceMapper orderServiceMapper;
    @Autowired
    private UserAccountMapper userAccountMapper;
    @Autowired
    private StoreServiceMapper storeServiceMapper;
    @Autowired
    private OrderAmountMapper orderAmountMapper;
    @Autowired
    private StoreMapper storeMapper;

    @Override
    public List<Order> selectCanLootOrderList(Order order) {
        //进行业务处理
        //获取当前登录者的信息 并且查询到当前用户的门店
        Long userId = ShiroUtils.getUserId();
        UserAccount userAccount = userAccountMapper.selectUserAccountByUserId(userId);
        return orderMapper.selectCanLootOrderList(userAccount.getStoreId());
    }

    @Override
    public int lootOrder(Order order) {

        //获取当前用户门店ID
        Long userId = ShiroUtils.getUserId();
        UserAccount userAccount = userAccountMapper.selectUserAccountByUserId(userId);
        order.setStoreId(userAccount.getStoreId());
        //计算往返路程
        Store store = storeMapper.selectByStoreId(userAccount.getStoreId());
        BigDecimal oLat = store.getPosLat();
        BigDecimal oLng = store.getPosLng();
        String origin = oLng + "," + oLat;
        String destination = Geo.geo(order.getCarAddress());
        int distance = Distance.getDistance(origin, destination, DISTANCE_TYPE_CAR);
        order.setJourney(distance * 2);

        orderMapper.lootOrder(order);
        //计算出该订单的花费：
        //1-查询出该订单的服务有哪些
        List<OrderService> list = orderServiceMapper.selectOrderService(order.getOrderId());
        //2-查询出订单所属门店
        float countCost = 0;
        //3-计算所有服务花费
        for (OrderService orderService : list) {
            countCost += storeServiceMapper.selectCost(order.getStoreId(), orderService.getServiceId());
        }
        //插入数据
        //创建对象设值
        OrderAmount orderAmount = new OrderAmount();
        orderAmount.setOrderId(order.getOrderId());
        orderAmount.setTotalAmount(countCost);
        orderAmount.setFinalAmount(countCost);
        //插入
        return orderAmountMapper.insertOrderAmount(orderAmount);
    }
}
