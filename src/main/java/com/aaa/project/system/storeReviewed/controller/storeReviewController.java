package com.aaa.project.system.storeReviewed.controller;

import com.aaa.common.support.Convert;
import com.aaa.framework.aspectj.lang.annotation.Log;
import com.aaa.framework.aspectj.lang.enums.BusinessType;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.project.system.store.domain.Store;
import com.aaa.project.system.storeReviewed.service.IStoreReviewService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import static com.aaa.project.myconst.MyConst.PASS_CONST_ID;
import static com.aaa.project.myconst.MyConst.REFUSE_CONST_ID;

@Controller
@RequestMapping("/system/reviewedStore")
public class storeReviewController extends BaseController {
    private String prefix = "system/storeReviewed";

    @Autowired
    private IStoreReviewService iStoreReviewService;

    @RequiresPermissions("system:reviewedstore:view")
    @GetMapping()
    public String store() {
        return prefix + "/reviewed";
    }

    /**
     * 查询门店列表
     */
    @RequiresPermissions("system:reviewedstore:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Store store) {
        startPage();
        List<Store> list = iStoreReviewService.selectStoreList(store);
        return getDataTable(list);
    }

    /**
     * 未通过
     *
     * @param ids
     * @return 结果
     */
    @RequiresPermissions("system:reviewedstore:refuse")
    @Log(title = "门店", businessType = BusinessType.DELETE)
    @PostMapping("/refuse")
    @ResponseBody
    public AjaxResult refuse(String ids) {
        return toAjax(iStoreReviewService.updateStoreStatusById(Convert.toInt(ids), REFUSE_CONST_ID));
    }

    /**
     * 通过
     *
     * @param ids
     * @return 结果
     */
    @RequiresPermissions("system:reviewedstore:agree")
    @Log(title = "门店", businessType = BusinessType.DELETE)
    @PostMapping("/agree")
    @ResponseBody
    public AjaxResult agree(String ids) {
        return toAjax(iStoreReviewService.updateStoreStatusById(Convert.toInt(ids), PASS_CONST_ID));
    }


}


