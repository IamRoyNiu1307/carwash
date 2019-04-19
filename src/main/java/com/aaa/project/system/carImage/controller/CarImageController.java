package com.aaa.project.system.carImage.controller;

import java.util.List;
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
import com.aaa.project.system.carImage.domain.CarImage;
import com.aaa.project.system.carImage.service.ICarImageService;
import com.aaa.framework.web.controller.BaseController;
import com.aaa.framework.web.page.TableDataInfo;
import com.aaa.framework.web.domain.AjaxResult;
import com.aaa.common.utils.poi.ExcelUtil;

/**
 * 汽车图片 信息操作处理
 * 
 * @author aaa
 * @date 2019-04-19
 */
@Controller
@RequestMapping("/system/carImage")
public class CarImageController extends BaseController
{
    private String prefix = "system/carImage";
	
	@Autowired
	private ICarImageService carImageService;
	
	@RequiresPermissions("system:carImage:view")
	@GetMapping()
	public String carImage()
	{
	    return prefix + "/carImage";
	}
	
	/**
	 * 查询汽车图片列表
	 */
	@RequiresPermissions("system:carImage:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(CarImage carImage)
	{
		startPage();
        List<CarImage> list = carImageService.selectCarImageList(carImage);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出汽车图片列表
	 */
	@RequiresPermissions("system:carImage:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(CarImage carImage)
    {
    	List<CarImage> list = carImageService.selectCarImageList(carImage);
        ExcelUtil<CarImage> util = new ExcelUtil<CarImage>(CarImage.class);
        return util.exportExcel(list, "carImage");
    }
	
	/**
	 * 新增汽车图片
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存汽车图片
	 */
	@RequiresPermissions("system:carImage:add")
	@Log(title = "汽车图片", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(CarImage carImage)
	{		
		return toAjax(carImageService.insertCarImage(carImage));
	}

	/**
	 * 修改汽车图片
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		CarImage carImage = carImageService.selectCarImageById(id);
		mmap.put("carImage", carImage);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存汽车图片
	 */
	@RequiresPermissions("system:carImage:edit")
	@Log(title = "汽车图片", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(CarImage carImage)
	{		
		return toAjax(carImageService.updateCarImage(carImage));
	}
	
	/**
	 * 删除汽车图片
	 */
	@RequiresPermissions("system:carImage:remove")
	@Log(title = "汽车图片", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(carImageService.deleteCarImageByIds(ids));
	}
	
}
