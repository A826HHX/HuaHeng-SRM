package com.hh.pms.service;

import java.util.List;

import com.ruoyi.system.api.domain.QualityOrder;
import com.ruoyi.system.api.domain.QualityTaskList;

/**
 * 到货质检Service接口
 * 
 * @author yangtao
 * @date 2023-12-21
 */
public interface IQualityTaskListService 
{
    /**
     * 查询到货质检
     * 
     * @param qualityTaskListId 到货质检主键
     * @return 到货质检
     */
    public QualityTaskList selectQualityTaskListByQualityTaskListId(Long qualityTaskListId);

    /**
     * 查询到货质检列表
     * 
     * @param qualityTaskList 到货质检
     * @return 到货质检集合
     */
    public List<QualityTaskList> selectQualityTaskListList(QualityTaskList qualityTaskList);

    /**
     * 新增到货质检
     * 
     * @param qualityTaskList 到货质检
     * @return 结果
     */
    public int insertQualityTaskList(QualityTaskList qualityTaskList);

    /**
     * 修改到货质检
     * 
     * @param qualityTaskList 到货质检
     * @return 结果
     */
    public int updateQualityTaskList(QualityTaskList qualityTaskList);

    /**
     * 批量删除到货质检
     * 
     * @param qualityTaskListIds 需要删除的到货质检主键集合
     * @return 结果
     */
    public int deleteQualityTaskListByQualityTaskListIds(Long[] qualityTaskListIds);

    /**
     * 删除到货质检信息
     * 
     * @param qualityTaskListId 到货质检主键
     * @return 结果
     */
    public int deleteQualityTaskListByQualityTaskListId(Long qualityTaskListId);

    /**
     * 查询免检单列表
     */
    List<QualityOrder> selectQualityOrdergetExemptList(QualityOrder qualityOrder);

    /**
     * 修改免检状态
     * @param qualityTaskList
     * @return
     */
    int updateQualityTaskExemopt(QualityTaskList qualityTaskList);
}
