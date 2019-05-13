// pages/order/index_comit.js
const app = getApp();
const config = require('../../config.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    order:{},
    orderId:null,
    points: 5,
    uploadFile:''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var _this = this
    this.setData({
      uploadFile: config.uploadFileUrl
    })
    console.log(options)
    this.setData({ 
      orderId:options.orderId
    });
    app.http('/api/order/getOrder',{
      orderId:options.orderId
    }).then(res=>{
      _this.setData({
        order:res.order
      })
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
  onShow: function (options) {
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

  submit() {
    var _this = this
    app.http('/api/store/evaluate',{
      orderId:_this.data.order.orderId,
      storeId:_this.data.order.storeId,
      account: app.globalData.account,
      star: _this.data.points,
    }).then(()=>{
      wx.showToast({
        title: '评价成功',
        icon: 'success',
        duration: 1000,
        complete() {
          setTimeout(() => {
            wx.navigateBack({
              delta: 1
            })
          }, 1000);
        }
      });
    });
  },

  getOrderInfo(sn) {
    app.http('/Iorder/getorderinfo', { sn }).then(res => {
      this.setData({ info: res });
    });
  },

  changePoints(e) {
    this.setData({ points: parseInt(e.target.id) });
  }
})