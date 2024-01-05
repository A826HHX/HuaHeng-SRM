<p align="center">
	<img alt="logo" src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/logo/logo.png">
</p>
<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">华恒采购管理系统</h1>
<h4 align="center">基于 Vue/Element UI 和 Spring Boot/Spring Cloud & Alibaba 前后端分离的分布式微服务项目</h4>
<p align="center">
	<a href="https://gitee.com/y_project/RuoYi-Cloud/stargazers"><img src="https://gitee.com/y_project/RuoYi-Cloud/badge/star.svg?theme=dark"></a>
	<a href="https://gitee.com/y_project/RuoYi-Cloud"><img src="https://img.shields.io/badge/RuoYi-v3.6.3-brightgreen.svg"></a>
	<a href="https://gitee.com/y_project/RuoYi-Cloud/blob/master/LICENSE"><img src="https://img.shields.io/github/license/mashape/apistatus.svg"></a>
</p>

## 平台简介
华恒采购管理系统是一套全部开源的快速开发平台，毫无保留给个人及企业免费使用。

* 采用前后端分离的模式，微服务版本前端(基于 [RuoYi-Vue](https://gitee.com/y_project/RuoYi-Vue))。
* 后端采用Spring Boot、Spring Cloud & Alibaba。
* 注册中心、配置中心选型Nacos，权限认证使用Redis。
* 流量控制框架选型Sentinel，分布式事务选型Seata。
* 提供了技术栈（[Vue3](https://v3.cn.vuejs.org) [Element Plus](https://element-plus.org/zh-CN) [Vite](https://cn.vitejs.dev)）版本[RuoYi-Cloud-Vue3](https://github.com/yangzongzhuan/RuoYi-Cloud-Vue3)，保持同步更新。
* 如需不分离应用，请移步 [RuoYi](https://gitee.com/y_project/RuoYi)，如需分离应用，请移步 [RuoYi-Vue](https://gitee.com/y_project/RuoYi-Vue)
* 阿里云折扣场：[点我进入](http://aly.ruoyi.vip)，腾讯云秒杀场：[点我进入](http://txy.ruoyi.vip)&nbsp;&nbsp;
* 阿里云优惠券：[点我领取](https://www.aliyun.com/minisite/goods?userCode=brki8iof&share_source=copy_link)，腾讯云优惠券：[点我领取](https://cloud.tencent.com/redirect.php?redirect=1025&cps_key=198c8df2ed259157187173bc7f4f32fd&from=console)&nbsp;&nbsp;

#### 友情链接 [若依/RuoYi-Cloud](https://gitee.com/zhangmrit/ruoyi-cloud) Ant Design版本。

## 系统模块

~~~
com.ruoyi     
├── ruoyi-ui              // 前端框架 [80]
├── ruoyi-gateway         // 网关模块 [8080]
├── ruoyi-auth            // 认证中心 [9200]
├── ruoyi-api             // 接口模块
│       └── ruoyi-api-system                          // 系统接口
├── ruoyi-common          // 通用模块
│       └── ruoyi-common-core                         // 核心模块
│       └── ruoyi-common-datascope                    // 权限范围
│       └── ruoyi-common-datasource                   // 多数据源
│       └── ruoyi-common-log                          // 日志记录
│       └── ruoyi-common-redis                        // 缓存服务
│       └── ruoyi-common-seata                        // 分布式事务
│       └── ruoyi-common-security                     // 安全模块
│       └── ruoyi-common-swagger                      // 系统接口
├── ruoyi-modules         // 业务模块
│       └── ruoyi-system                              // 系统模块 [9201]
│       └── ruoyi-gen                                 // 代码生成 [9202]
│       └── ruoyi-job                                 // 定时任务 [9203]
│       └── ruoyi-file                                // 文件服务 [9300]
├── ruoyi-visual          // 图形化管理模块
│       └── ruoyi-visual-monitor                      // 监控中心 [9100]
├──pom.xml                // 公共依赖
~~~

## 跨职能部门图

<img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/_C%60CH%608M(Z$QBH$U%60%5BP(%7DK8.png"/>

## 内置功能

1.  用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.  部门管理：配置系统组织机构（公司、部门、小组），树结构展现支持数据权限。
3.  岗位管理：配置系统用户所属担任职务。
4.  菜单管理：配置系统菜单，操作权限，按钮权限标识等。
5.  角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
6.  字典管理：对系统中经常使用的一些较为固定的数据进行维护。
7.  参数管理：对系统动态配置常用参数。
8.  供应商管理：包含供应商列表、供应商信息维护、供应商生命周期、绩效考评等。
9.  需求管理：包含采购需求申请，采购需求池，我的采购任务等。
10.  合同管理：包含采购合同（签合同，合同转订单）。
11.  采购执行：采购订单，收货、入库。
12.  质量管理：质检。
13.  采购结算：订单业务对账。
14.  主数据管理：添加物料、银行、税率等信息。
15.  统计分析：对供应商，订单，需求等的汇总。

## 在线体验

- admin/admin123  

演示地址：http://ruoyi.vip  
文档地址：http://doc.ruoyi.vip

## 演示图

<table>
  <tr>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/login.png"/></td>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/performance.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/index.png"/></td>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/material.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/materialRequirement.png"/></td>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/orderManager.png"/></td>
    </tr>
    <tr>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/procurementTasks.png"/></td>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/requirementAnalysis.png"/></td>
    </tr>
	<tr>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/supplier.png"/></td>
        <td><img src="https://gitee.com/A826HHX/HuaHeng-SRM/raw/master/ruoyi-ui/src/assets/images/supplierInfo.png"/></td>
    </tr>	 
</table>


