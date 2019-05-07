package com.aaa.project.system.indexTuBiao.indexTuBiaoService;

import java.util.List;
import java.util.Map;

public interface IndexTuBiaoService {
    /**
     * 返回前五的门店和下订单数
     *
     * @return
     */
    public List<Map<String, Object>> getSource();

    /**
     * 该门店最近订单情况
     *
     * @return 结果
     */
    public List<Map<String, Object>> firstGraphGetSource(String store_id);

    /**
     * 该门店最近营业额
     *
     * @return 结果
     */
    public List<Map<String, Object>> secondGraphGetSource(String store_id);

    /**
     * 该门店服务点击情况
     *
     * @param store_id
     * @return 结果
     */
    public List<Map<String, Object>> thirdGraphGetSource(String store_id);

    /**
     * boss最近订单情况
     *
     * @param owner_account
     * @return 结果
     */
    public List<Map<String, Object>> bossFirstGraphGetSource(String owner_account);

    /**
     * boss最近营业额
     *
     * @param owner_account
     * @return 结果
     */
    public List<Map<String, Object>> bossSecondGraphGetSource(String owner_account);


}
