// pages/order/index_info.js
const app = getApp();
const config = require('../../config.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    order:{},
    carInfo:{},
    keyInfo:{},
    uploadFile:''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    console.log("options".options)
    var _this = this
    _this.setData({
      uploadFile: config.uploadFileUrl
    })
    var orderId = options.orderId
    app.http('/api/order/getOrder',{
      orderId:orderId
    }).then(res=>{
      if(res.code==0){
        _this.setData({
          order:res.order,
          keyInfo:res.order.keyInfo
        })
        app.http('/api/car/getCarInfo',{
          carInfoId:res.order.carId
        }).then(res=>{
          _this.setData({
            carInfo:res.carInfo
          })
        })
        
      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  },

  getOrderInfo(sn) {
    app.http('/Iorder/getorderinfo', { sn }).then(res => {
      this.setData({ info: res });
    });
  },

  cancelOrder(e) {
    wx.showModal({
      title: '提示',
      content: `是否确认取消订单？`,
      success: res => {
        if (res.confirm) {
          app.http('/Iorder/changeorderstatus', {
            openid: app.globalData.userInfo.openid,
            sn: e.target.id
          }).then(() => {
            wx.navigateBack({
              delta: 1
            })
          });
        }
      }
    })
  }
})