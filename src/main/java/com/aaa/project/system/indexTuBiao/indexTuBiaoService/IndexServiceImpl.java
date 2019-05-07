package com.aaa.project.system.indexTuBiao.indexTuBiaoService;

import com.aaa.project.system.order.mapper.OrderMapper;
import com.aaa.project.system.store.domain.Store;
import com.aaa.project.system.user.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class IndexServiceImpl implements IndexTuBiaoService {
    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<Map<String, Object>> getSource() {
        //查询订单表里数目最多的5个门店，并且获取门店名称和订单数目
        List<Map<String, Object>> maps = orderMapper.selectCountOrder();
        return maps;
    }

    @Override
    public List<Map<String, Object>> firstGraphGetSource(String store_id) {

        List<Map<String, Object>> maps = orderMapper.firstGraphGetSource(store_id);
        return maps;
    }

    @Override
    public List<Map<String, Object>> secondGraphGetSource(String store_id) {
        List<Map<String, Object>> maps = orderMapper.secondGraphGetSource(store_id);
        return maps;
    }

    @Override
    public List<Map<String, Object>> thirdGraphGetSource(String store_id) {
        List<Map<String, Object>> maps = orderMapper.thirdGraphGetSource(store_id);
        return maps;
    }

    @Override
    public List<Map<String, Object>> bossFirstGraphGetSource(String owner_account) {
        return orderMapper.bossFirstGraphGetSource(owner_account);
    }

    @Override
    public List<Map<String, Object>> bossSecondGraphGetSource(String owner_account) {
        return orderMapper.bossSecondGraphGetSource(owner_account);
    }

}
