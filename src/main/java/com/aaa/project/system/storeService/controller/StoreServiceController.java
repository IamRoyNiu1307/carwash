package com.aaa.project.system.storeService.controller;

import java.util.List;

import com.aaa.common.utils.security.ShiroUtils;
import com.aaa.project.system.defaultService.domain.DefaultService;
import com.aaa.project.system.defaultService.service.IDefaultServiceService;
import com.aaa.project.system.status.domain.Status;
import com.aaa.project.system.status.service.IStatusService;
import com.aaa.project.system.store.service.IStoreService;
import com.aaa.project.system.userAccount.service.IUserAccountService;
import com.alibaba.fastjson.JSON;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.project.system.storeService.domain.StoreService;
import com.aaa.project.system.storeService.service.IStoreServiceService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

import javax.servlet.http.HttpServletRequest;

/**
 * 业务 信息操作处理
 *
 * @author aaa
 * @date 2019-04-19
 */
@Controller
@RequestMapping("/system/storeService")
public class StoreServiceController extends BaseController {
    private String prefix = "system/storeService";

    @Autowired
    private IStoreServiceService storeServiceService;
    @Autowired
    private IStatusService statusService;
    @Autowired
    private IUserAccountService userAccountService;
    @Autowired
    private IStoreService storeService;
    @Autowired
    private IDefaultServiceService defaultServiceService;

    @RequiresPermissions("system:storeService:view")
    @GetMapping()
    public String storeService() {
        return prefix + "/storeService";
    }

    /**
     * 查询业务列表
     */
    @RequiresPermissions("system:storeService:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(StoreService storeService) {
        startPage();
        List<StoreService> list = storeServiceService.selectStoreServiceList(storeService);
        return getDataTable(list);
    }


    /**
     * 导出业务列表
     */
    @RequiresPermissions("system:storeService:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(StoreService storeService) {
        List<StoreService> list = storeServiceService.selectStoreServiceList(storeService);
        ExcelUtil<StoreService> util = new ExcelUtil<StoreService>(StoreService.class);
        return util.exportExcel(list, "storeService");
    }

    /**
     * 新增业务
     */
    @GetMapping("/add")
    public String add(HttpServletRequest req) {

        List<Status> statusList = statusService.selectServicesStatusList();
        List<DefaultService> serviceList = defaultServiceService.selectDefaultService();
        req.setAttribute("statusList", statusList);
        req.setAttribute("serviceList", serviceList);
        return prefix + "/add";
    }

    /**
     * 新增保存业务
     */
    @RequiresPermissions("system:storeService:add")
    @Log(title = "业务", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(StoreService storeService) {
        DefaultService defaultService = defaultServiceService.selectDefaultServiceById(Integer.parseInt(storeService.getServiceName()));
        storeService.setServiceName(defaultService.getServiceName());
        return toAjax(storeServiceService.insertStoreService(storeService));
    }

    /**
     * 修改业务
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap, HttpServletRequest req) {
        StoreService storeService = storeServiceService.selectStoreServiceById(id);
        mmap.put("storeService", storeService);
        List<Status> list = statusService.selectServicesStatusList();
        List<DefaultService> serviceList = defaultServiceService.selectDefaultService();
        req.setAttribute("serviceList", serviceList);
        req.setAttribute("list", list);
        return prefix + "/edit";
    }

    /**
     * 修改保存业务
     */
    @RequiresPermissions("system:storeService:edit")
    @Log(title = "业务", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(StoreService storeService) {
        DefaultService defaultService = defaultServiceService.selectDefaultServiceById(Integer.parseInt(storeService.getServiceName()));
        storeService.setServiceName(defaultService.getServiceName());
        return toAjax(storeServiceService.updateStoreService(storeService));
    }

    /**
     * 删除业务
     */
    @RequiresPermissions("system:storeService:remove")
    @Log(title = "业务", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(storeServiceService.deleteStoreServiceByIds(ids));
    }

}
