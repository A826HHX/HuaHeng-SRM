package com.hh.pms.model;

import com.hh.pms.mast.domain.Category;
import com.hh.pms.mast.domain.Currency;
import com.hh.pms.mast.domain.Material;
import com.hh.pms.mast.domain.TaxRate;
import com.ruoyi.common.core.web.page.TableDataInfo;
import org.springframework.cloud.openfeign.FeignClient;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@FeignClient(value = "hh-mast")
@Component("materialClientBean")
public interface MaterialClient {
    @RequestMapping(method = RequestMethod.GET,value = "/material/list")
    public TableDataInfo list(@RequestParam("mqueryParams") Material material,@RequestParam("pageNum") Integer pageNum,@RequestParam("pageSize") Integer pageSize);
    @RequestMapping(method = RequestMethod.GET,value = "/currency/list")
    public TableDataInfo list(@RequestParam("currency") Currency currency,@RequestParam("pageNum") Integer pageNum,@RequestParam("pageSize") Integer pageSize);
    @RequestMapping(method = RequestMethod.GET,value = "/category/list")
    public TableDataInfo listCategory(@RequestParam("category") Category category, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize);
    @RequestMapping(method = RequestMethod.GET,value = "/rate/list")
    public TableDataInfo listRate(@RequestParam("taxRate") TaxRate taxRate, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize);
}
