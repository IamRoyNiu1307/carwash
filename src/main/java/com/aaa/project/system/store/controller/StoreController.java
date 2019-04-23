package com.aaa.project.system.store.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import com.aaa.common.exception.file.FileNameLengthLimitExceededException;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.tomcat.util.http.fileupload.FileUploadBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.project.system.store.domain.Store;
import com.aaa.project.system.store.service.IStoreService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 * 门店 信息操作处理
 *
 * @author aaa
 * @date 2019-04-18
 */
@Controller
@RequestMapping("/system/store")
public class StoreController extends BaseController {
    private String prefix = "system/store";

    @Autowired
    private IStoreService storeService;

    @RequiresPermissions("system:store:view")
    @GetMapping()
    public String store() {
        return prefix + "/store";
    }

    /**
     * 查询门店列表
     */
    @RequiresPermissions("system:store:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Store store) {
        startPage();
        List<Store> list = storeService.selectStoreList(store);
        return getDataTable(list);
    }


    /**
     * 导出门店列表
     */
    @RequiresPermissions("system:store:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Store store) {
        List<Store> list = storeService.selectStoreList(store);
        ExcelUtil<Store> util = new ExcelUtil<Store>(Store.class);
        return util.exportExcel(list, "store");
    }

    /**
     * 新增门店
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存门店
     */
    @RequiresPermissions("system:store:add")
    @Log(title = "门店", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Store store,@RequestParam("file") MultipartFile file) throws FileUploadBase.FileSizeLimitExceededException, FileNameLengthLimitExceededException, IOException {
        System.out.println(store);
        return toAjax(storeService.insertStore(store, file));
    }

    /**
     * 修改门店
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap) {
        Store store = storeService.selectStoreById(id);
        mmap.put("store", store);
        return prefix + "/edit";
    }

    /**
     * 修改保存门店
     */
    @RequiresPermissions("system:store:edit")
    @Log(title = "门店", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Store store) {
        return toAjax(storeService.updateStore(store));
    }

    /**
     * 删除门店
     */
    @RequiresPermissions("system:store:remove")
    @Log(title = "门店", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(storeService.deleteStoreByIds(ids));
    }

}
