package com.aaa.project.system.api;

import com.aaa.framework.web.controller.BaseController;
import com.aaa.project.system.indexTuBiao.indexTuBiaoService.IndexTuBiaoService;
import com.aaa.project.system.store.domain.Store;
import com.aaa.project.system.store.service.IStoreService;
import com.aaa.project.system.user.domain.User;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/api/index")
public class IndexTuBiaoController extends BaseController {
    @Autowired
    private IndexTuBiaoService indexTuBiaoService;

    @Autowired
    private IStoreService iStoreService;


    /**
     * 管理员首页报表
     *
     * @return 前五洗车店名和订单数
     */
    @RequiresRoles({"admin"})
    @RequestMapping("/adminGetSource")
    @ResponseBody
    public List<Map<String, Object>> getSource() {
        //需要参数：1-门店：门店名称 2-该门店下的订单数目
        List<Map<String, Object>> source = indexTuBiaoService.getSource();
        return source;
    }

    /**
     * 店长首页报表
     *
     * @return 最近洗车店订单情况
     */
    @RequiresRoles({"manager"})
    @RequestMapping("/firstGraphGetSource")
    @ResponseBody
    public List<Map<String, Object>> firstGraphGetSource() {
        User user = getSysUser();
        String loginName = user.getLoginName();
        Store store = iStoreService.selectByUserId(user.getUserId());
        if (store != null) {
            List<Map<String, Object>> maps = indexTuBiaoService.firstGraphGetSource(store.getStoreId());
            return maps;
        }
        return null;
    }

    /**
     * 店长首页报表
     *
     * @return 最近洗车店每日营业额度
     */
    @RequiresRoles({"manager"})
    @RequestMapping("/secondGraphGetSource")
    @ResponseBody
    public List<Map<String, Object>> secondGraphGetSource() {
        User user = getSysUser();
        String loginName = user.getLoginName();
        Store store = iStoreService.selectByUserId(user.getUserId());
        if (store != null) {
            List<Map<String, Object>> maps = indexTuBiaoService.secondGraphGetSource(store.getStoreId());
            return maps;
        }
        return null;
    }

    /**
     * 服务点击数
     *
     * @return 服务点击数
     */
    @RequiresRoles({"manager"})
    @RequestMapping("/thirdGraphGetSource")
    @ResponseBody
    public List<Map<String, Object>> thirdGraphGetSource() {
        User user = getSysUser();
        String loginName = user.getLoginName();
        Store store = iStoreService.selectByUserId(user.getUserId());
        if (store != null) {
            List<Map<String, Object>> maps = indexTuBiaoService.thirdGraphGetSource(store.getStoreId());
            return maps;
        }
        return null;
    }

    /**
     * BOSS首页报表
     *
     * @return 最近洗车店订单情况
     */
    @RequiresRoles({"merchant"})
    @RequestMapping("/BOSSFirstGraphGetSource")
    @ResponseBody
    public List<Map<String, Object>> bossFirstGraphGetSource() {
        User user = getSysUser();
        String loginName = user.getLoginName();
        List<Store> store = iStoreService.selectStoreByLoginName(loginName);
        if (store!=null&&store.get(0).getOwnerAccount() != null) {
            List<Map<String, Object>> maps = indexTuBiaoService.bossFirstGraphGetSource(store.get(0).getOwnerAccount());
            return maps;
        }
        return null;

    }

    /**
     * boss首页报表
     *
     * @return 最近洗车店每日营业额度
     */
    @RequiresRoles({"merchant"})
    @RequestMapping("/BOSSSecondGraphGetSource")
    @ResponseBody
    public List<Map<String, Object>> bossSecondGraphGetSource() {
        User user = getSysUser();
        String loginName = user.getLoginName();
        List<Store> store = iStoreService.selectStoreByLoginName(loginName);
        if (store!=null&&store.get(0).getOwnerAccount() != null) {
            List<Map<String, Object>> maps = indexTuBiaoService.bossSecondGraphGetSource(store.get(0).getOwnerAccount());
            return maps;
        }
        return null;
    }
}
