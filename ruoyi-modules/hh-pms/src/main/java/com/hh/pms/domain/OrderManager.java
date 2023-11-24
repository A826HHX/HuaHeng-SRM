package com.hh.pms.domain;

import java.math.BigDecimal;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 采购订单管理对象 order_manager
 *
 * @author ruoyi
 * @date 2023-11-23
 */
public class OrderManager extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 采购订单id */
    private Long orderId;

    /** 采购订单编号 */
    @Excel(name = "采购订单编号")
    private String orderCode;

    /** 公司 */
    @Excel(name = "公司")
    private Long company;

    /** 订单类型 */
    private Long orderType;

    /** 订单来源 */
    @Excel(name = "订单来源")
    private String orderSource;

    /** 采购组织 */
    private Long purOrganization;

    /** 附件 */
    private String annex;

    /** 是否自提 */
    private Long isSelfPickup;

    /** 自提车牌号 */
    private String licensePlateNumber;

    /** 自提司机联系方式 */
    private String concatInfomation;

    /** 关联合同编号 */
    private String contractCode;

    /** 关联合同名称 */
    @Excel(name = "关联合同名称")
    private String contractName;

    /** 订单说明 */
    private String orderDescription;

    /** 需求总数量 */
    @Excel(name = "需求总数量")
    private BigDecimal totalDemand;

    /** 采购员 */
    @Excel(name = "采购员")
    private Long purchaser;

    /** 采购审批状态 */
    @Excel(name = "采购审批状态")
    private Long orderState;

    /** 订单执行状态 */
    @Excel(name = "订单执行状态")
    private Long orderStatus;

    /** 币种 */
    private Long currencyId;

    /** 供应商名称 */
    @Excel(name = "供应商名称")
    private Long supplier;

    /** 联系人 */
    private String contacts;

    /** 联系电话 */
    private String phone;

    /** 供应商发票方式 */
    private Long invoiceMethod;

    @Override
    public String toString() {
        return "OrderManager{" +
                "orderId=" + orderId +
                ", orderCode='" + orderCode + '\'' +
                ", company=" + company +
                ", orderType=" + orderType +
                ", orderSource='" + orderSource + '\'' +
                ", purOrganization=" + purOrganization +
                ", annex=" + annex +
                ", isSelfPickup=" + isSelfPickup +
                ", licensePlateNumber='" + licensePlateNumber + '\'' +
                ", concatInfomation='" + concatInfomation + '\'' +
                ", contractCode='" + contractCode + '\'' +
                ", contractName='" + contractName + '\'' +
                ", orderDescription='" + orderDescription + '\'' +
                ", totalDemand=" + totalDemand +
                ", purchaser=" + purchaser +
                ", orderState=" + orderState +
                ", orderStatus=" + orderStatus +
                ", currencyId=" + currencyId +
                ", supplier=" + supplier +
                ", contacts='" + contacts + '\'' +
                ", phone='" + phone + '\'' +
                ", invoiceMethod=" + invoiceMethod +
                ", createTime=" + createTime +
                ", materialId='" + materialId + '\'' +
                '}';
    }

    @Excel(name = "采购订单创建日期")
    @JsonFormat(pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;

    @Override
    public Date getCreateTime() {
        return createTime;
    }

    @Override
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /** 物料信息ID */
    @Excel(name = "物料信息ID")
    private String materialId;

    public void setOrderId(Long orderId)
    {
        this.orderId = orderId;
    }

    public Long getOrderId()
    {
        return orderId;
    }
    public void setOrderCode(String orderCode)
    {
        this.orderCode = orderCode;
    }

    public String getOrderCode()
    {
        return orderCode;
    }
    public void setCompany(Long company)
    {
        this.company = company;
    }

    public Long getCompany()
    {
        return company;
    }
    public void setOrderType(Long orderType)
    {
        this.orderType = orderType;
    }

    public Long getOrderType()
    {
        return orderType;
    }
    public void setOrderSource(String orderSource)
    {
        this.orderSource = orderSource;
    }

    public String getOrderSource()
    {
        return orderSource;
    }
    public void setPurOrganization(Long purOrganization)
    {
        this.purOrganization = purOrganization;
    }

    public Long getPurOrganization()
    {
        return purOrganization;
    }

    public String getAnnex() {
        return annex;
    }

    public void setAnnex(String annex) {
        this.annex = annex;
    }

    public void setIsSelfPickup(Long isSelfPickup)
    {
        this.isSelfPickup = isSelfPickup;
    }

    public Long getIsSelfPickup()
    {
        return isSelfPickup;
    }
    public void setLicensePlateNumber(String licensePlateNumber)
    {
        this.licensePlateNumber = licensePlateNumber;
    }

    public String getLicensePlateNumber()
    {
        return licensePlateNumber;
    }
    public void setConcatInfomation(String concatInfomation)
    {
        this.concatInfomation = concatInfomation;
    }

    public String getConcatInfomation()
    {
        return concatInfomation;
    }
    public void setContractCode(String contractCode)
    {
        this.contractCode = contractCode;
    }

    public String getContractCode()
    {
        return contractCode;
    }
    public void setContractName(String contractName)
    {
        this.contractName = contractName;
    }

    public String getContractName()
    {
        return contractName;
    }
    public void setOrderDescription(String orderDescription)
    {
        this.orderDescription = orderDescription;
    }

    public String getOrderDescription()
    {
        return orderDescription;
    }
    public void setTotalDemand(BigDecimal totalDemand)
    {
        this.totalDemand = totalDemand;
    }

    public BigDecimal getTotalDemand()
    {
        return totalDemand;
    }
    public void setPurchaser(Long purchaser)
    {
        this.purchaser = purchaser;
    }

    public Long getPurchaser()
    {
        return purchaser;
    }
    public void setOrderState(Long orderState)
    {
        this.orderState = orderState;
    }

    public Long getOrderState()
    {
        return orderState;
    }
    public void setOrderStatus(Long orderStatus)
    {
        this.orderStatus = orderStatus;
    }

    public Long getOrderStatus()
    {
        return orderStatus;
    }
    public void setCurrencyId(Long currencyId)
    {
        this.currencyId = currencyId;
    }

    public Long getCurrencyId()
    {
        return currencyId;
    }
    public void setSupplier(Long supplier)
    {
        this.supplier = supplier;
    }

    public Long getSupplier()
    {
        return supplier;
    }
    public void setContacts(String contacts)
    {
        this.contacts = contacts;
    }

    public String getContacts()
    {
        return contacts;
    }
    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public String getPhone()
    {
        return phone;
    }
    public void setInvoiceMethod(Long invoiceMethod)
    {
        this.invoiceMethod = invoiceMethod;
    }

    public Long getInvoiceMethod()
    {
        return invoiceMethod;
    }
    public void setMaterialId(String materialId)
    {
        this.materialId = materialId;
    }

    public String getMaterialId()
    {
        return materialId;
    }

}