// pages/door/order.js
const app = getApp();
const config = require('../../config.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    orderInfoList:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
  },
  getOrderList() {
    app.http('/api/user/getOrderList', {
      account: app.globalData.account,
      //0：所有订单  1：已完成  2：未完成
      statusId: 208
    })
      .then(res => {
        this.setData({ orderInfoList: res.orderInfoList });
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
    this.getOrderList()
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

  updateOrder(e){
    var orderId = e.currentTarget.id
    wx.navigateTo({
      url: '/pages/takePhoto/takePhoto?orderId='+orderId,
    })
  }

 
})