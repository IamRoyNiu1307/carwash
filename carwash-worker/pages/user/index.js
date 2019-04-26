// pages/user/index.js
const app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    account:'',
    info: {},
    userInfo:null
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    if (app.globalData.userInfo){
      this.setData({
        userInfo:app.globalData.userInfo
      })
    }
    
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
    if(app.globalData.account){
      this.setData({
        account: app.globalData.account
      })
    }else if(app.globalData.openid){
      this.bind()
    }
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
  bind(){
    var _this = this
    app.http('/api/consumer/bind', {openid:app.globalData.openid}).then(res => {
      if (res.account) {
        _this.setData({
          account:res.account
        })
      }
    })
  },
  toLogin(){
    wx.navigateTo({
      url: '/pages/user/login',
    })
  }
})