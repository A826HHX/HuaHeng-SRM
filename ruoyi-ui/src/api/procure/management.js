import request from '@/utils/request'

// 查询采购合同管理列表
export function listManagement(query) {
  return request({
    url: '/procure/management/list',
    method: 'get',
    params: query
  })
}

// 查询采购合同管理详细
export function getManagement(contractManagementId,bothSides) {
  return request({
    url: '/procure/management/' + contractManagementId+"/"+bothSides,
    method: 'get'
  })
}

// 新增采购合同管理
export function addManagement(data) {
  return request({
    url: '/procure/management',
    method: 'post',
    data: data
  })
}

// 修改采购合同管理
export function updateManagement(data) {
  return request({
    url: '/procure/management',
    method: 'put',
    data: data
  })
}

// 删除采购合同管理
export function delManagement(contractManagementId) {
  return request({
    url: '/procure/management/' + contractManagementId,
    method: 'delete'
  })
}

// 查询供应商列表
export function listSupplier(query) {
  return request({
    url: '/pms/OrderManager/listSupplier',
    method: 'get',
    params: query
  })
}

// 查询采购合同管理详细
export function getManagementById(contractManagementId) {
  return request({
    url: '/procure/management/' + contractManagementId,
    method: 'get'
  })
}
