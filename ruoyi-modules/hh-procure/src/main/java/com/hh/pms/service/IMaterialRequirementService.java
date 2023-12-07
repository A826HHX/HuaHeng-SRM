package com.hh.pms.service;

import java.util.List;

import com.hh.pms.domain.MaterialInformation;
import com.hh.pms.domain.MaterialPool;
import com.hh.pms.domain.MaterialRequirement;

/**
 * 采购需求申请Service接口
 * 
 * @author ruoyi
 * @date 2023-11-24
 */
public interface IMaterialRequirementService 
{
    /**
     * 查询采购需求申请
     * 
     * @param requirementId 采购需求申请主键
     * @return 采购需求申请
     */
    public MaterialRequirement selectMaterialRequirementByRequirementId(Long requirementId);

    /**
     * 查询采购需求申请列表
     * 
     * @param materialRequirement 采购需求申请
     * @return 采购需求申请集合
     */
    public List<MaterialRequirement> selectMaterialRequirementList(MaterialRequirement materialRequirement);

    /**
     * 新增采购需求申请
     * 
     * @param materialRequirement 采购需求申请
     * @return 结果
     */
    public int insertMaterialRequirement(MaterialRequirement materialRequirement);

    /**
     * 修改采购需求申请
     * 
     * @param materialRequirement 采购需求申请
     * @return 结果
     */
    public int updateMaterialRequirement(MaterialRequirement materialRequirement);

    /**
     * 批量删除采购需求申请
     * 
     * @param requirementIds 需要删除的采购需求申请主键集合
     * @return 结果
     */
    public int deleteMaterialRequirementByRequirementIds(Long[] requirementIds);

    /**
     * 删除采购需求申请信息
     * 
     * @param requirementId 采购需求申请主键
     * @return 结果
     */
    public int deleteMaterialRequirementByRequirementId(Long requirementId);

    public int insertRequirementInformations(List<MaterialInformation> materialInformations);

    /**
     * 查询采购需求池列表
     *
     * @param materialPool 采购需求池
     * @return 采购需求池集合
     */
    public List<MaterialPool> selectMaterialList(MaterialPool materialPool);

}
