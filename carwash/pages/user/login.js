// pages/user/login.js
const app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

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
  inputPhone(e) {
    this.setData({ account: e.detail.value });
  },
  inputCode(e) {
    this.setData({ code: e.detail.value });
  },
  sendCode() {
    if (this.data.account.length < 11) {
      return wx.showToast({
        title: '请输入正确的手机号',
        icon: 'none',
        duration: 2000
      })
    }
    app.http('/api/consumer/sendCode', 
      { 
        account: this.data.account,
        todo:"login"
      }
      ).then(res => { });
  },
  login(){
    if (this.data.account.length < 11) {
      return wx.showToast({
        title: '请输入正确的手机号',
        icon: 'none',
        duration: 2000
      })
    }
    if (this.data.code.length < 6) {
      return wx.showToast({
        title: '请输入验证码',
        icon: 'none',
        duration: 2000
      })
    }

    app.http('/api/consumer/login',
      {
        account: this.data.account,
        openid: app.globalData.openid,
        code: this.data.code
      },{
        useCookie:true
      }).then(res => {
        if(res.account){
          app.globalData.account = res.account
          app.globalData.role = res.role
          setTimeout(function () {
            wx.switchTab({
              url: '/pages/user/index'
            })
          }, 1500)

        }
        
      });
  },


  register(){
    wx.navigateTo({
      url: './register',
    })
  }
})