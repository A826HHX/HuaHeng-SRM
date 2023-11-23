package com.hh.pms.mapper;

import java.util.List;
import com.hh.pms.domain.SupplierDetails;

/**
 * 供应商详细Mapper接口
 * 
 * @author ruoyi
 * @date 2023-11-22
 */
public interface SupplierDetailsMapper 
{
    /**
     * 查询供应商详细
     * 
     * @param sdId 供应商详细主键
     * @return 供应商详细
     */
    public SupplierDetails selectSupplierDetailsBySdId(Long sdId);

    /**
     * 查询供应商详细列表
     * 
     * @param supplierDetails 供应商详细
     * @return 供应商详细集合
     */
    public List<SupplierDetails> selectSupplierDetailsList(SupplierDetails supplierDetails);

    /**
     * 新增供应商详细
     * 
     * @param supplierDetails 供应商详细
     * @return 结果
     */
    public int insertSupplierDetails(SupplierDetails supplierDetails);

    /**
     * 修改供应商详细
     * 
     * @param supplierDetails 供应商详细
     * @return 结果
     */
    public int updateSupplierDetails(SupplierDetails supplierDetails);

    /**
     * 删除供应商详细
     * 
     * @param sdId 供应商详细主键
     * @return 结果
     */
    public int deleteSupplierDetailsBySdId(Long sdId);

    /**
     * 批量删除供应商详细
     * 
     * @param sdIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSupplierDetailsBySdIds(Long[] sdIds);
}
