package com.hh.pms.mast.service;

import com.ruoyi.system.api.domain.Bank;

import java.util.List;

/**
 * 银行Service接口
 *
 * @author ruoyi
 * @date 2023-11-24
 */
public interface IBankService
{
    /**
     * 查询银行
     *
     * @param bankId 银行主键
     * @return 银行
     */
    public Bank selectBankByBankId(Long bankId);

    /**
     * 查询银行列表
     *
     * @param bank 银行
     * @return 银行集合
     */
    public List<Bank> selectBankList(Bank bank);

    /**
     * 新增银行
     *
     * @param bank 银行
     * @return 结果
     */
    public int insertBank(Bank bank);

    /**
     * 修改银行
     *
     * @param bank 银行
     * @return 结果
     */
    public int updateBank(Bank bank);

    /**
     * 批量删除银行
     *
     * @param bankIds 需要删除的银行主键集合
     * @return 结果
     */
    public int deleteBankByBankIds(Long[] bankIds);

    /**
     * 删除银行信息
     *
     * @param bankId 银行主键
     * @return 结果
     */
    public int deleteBankByBankId(Long bankId);
}
