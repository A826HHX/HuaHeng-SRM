package com.hh.pms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hh.pms.mapper.SupplierDetailsMapper;
import com.hh.pms.domain.SupplierDetails;
import com.hh.pms.service.ISupplierDetailsService;

/**
 * 供应商详细Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
@Service
public class SupplierDetailsServiceImpl implements ISupplierDetailsService 
{
    @Autowired
    private SupplierDetailsMapper supplierDetailsMapper;

    /**
     * 查询供应商详细
     * 
     * @param sdId 供应商详细主键
     * @return 供应商详细
     */
    @Override
    public SupplierDetails selectSupplierDetailsBySdId(Long sdId)
    {
        return supplierDetailsMapper.selectSupplierDetailsBySdId(sdId);
    }

    /**
     * 查询供应商详细列表
     * 
     * @param supplierDetails 供应商详细
     * @return 供应商详细
     */
    @Override
    public List<SupplierDetails> selectSupplierDetailsList(SupplierDetails supplierDetails)
    {
        return supplierDetailsMapper.selectSupplierDetailsList(supplierDetails);
    }

    /**
     * 新增供应商详细
     * 
     * @param supplierDetails 供应商详细
     * @return 结果
     */
    @Override
    public int insertSupplierDetails(SupplierDetails supplierDetails)
    {
        return supplierDetailsMapper.insertSupplierDetails(supplierDetails);
    }

    /**
     * 修改供应商详细
     * 
     * @param supplierDetails 供应商详细
     * @return 结果
     */
    @Override
    public int updateSupplierDetails(SupplierDetails supplierDetails)
    {
        return supplierDetailsMapper.updateSupplierDetails(supplierDetails);
    }

    /**
     * 批量删除供应商详细
     * 
     * @param sdIds 需要删除的供应商详细主键
     * @return 结果
     */
    @Override
    public int deleteSupplierDetailsBySdIds(Long[] sdIds)
    {
        return supplierDetailsMapper.deleteSupplierDetailsBySdIds(sdIds);
    }

    /**
     * 删除供应商详细信息
     * 
     * @param sdId 供应商详细主键
     * @return 结果
     */
    @Override
    public int deleteSupplierDetailsBySdId(Long sdId)
    {
        return supplierDetailsMapper.deleteSupplierDetailsBySdId(sdId);
    }
}
