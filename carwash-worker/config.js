const host = 'localhost'

const config = {

  // 下面的地址配合云端 Server 工作
  host: `http://${host}`,

  userLoginUrl: `http://${host}/wx/userLogin`,

  createOrderUrl: `http://${host}/order/createOrder/submitOrderByClient`,

  getUserOrdersUrl: `http://${host}/wx/getUserOrders`,
  
  getUserAccountUrl: `http://${host}/wx/getUserAccount`,

  getOrderLogsUrl: `http://${host}/wx/getOrderLogs`,

  getCodeUrl: `http://${host}/wx/getCode`,
  // 登录地址，用于建立会话
  loginUrl: `http://${host}/login`,

  updateOrderUrl: `http://${host}/api/order/uploadPicture`,

  // 测试的请求地址，用于测试会话
  requestUrl: `http://${host}/testRequest`,

  // 用code换取openId
  openIdUrl: `http://${host}/wx/getopenid`,

  // 测试的信道服务接口
  tunnelUrl: `http://${host}/tunnel`,

  // 生成支付订单的接口
  paymentUrl: `http://${host}/api/pay`,

  // 发送模板消息接口
  templateMessageUrl: `http://${host}/templateMessage`,

  // 发送订阅消息接口
  subscribeMessageUrl: `http://${host}/subscribeMessage`,

  // 上传文件路径
  uploadFileUrl: `http://${host}/profile`,

  // 下载示例图片接口
  downloadExampleUrl: `http://${host}/static/weapp.jpg`
}

module.exports = config