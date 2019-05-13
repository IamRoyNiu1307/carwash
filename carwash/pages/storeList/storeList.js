// pages/storeList/storeList.js
const config = require('../../config.js')
const app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    storeList:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var _this = this
    this.setData({
      uploadFile: config.uploadFileUrl
    })
    wx.getLocation({
      complete: res => {

        var lng = res.longitude
        var lat = res.latitude

        app.http('/api/store/aroundStoreList', {
          posLng: lng,
          posLat: lat
        }).then(res => {
          console.log(res.aroundStoreList)
          _this.setData({
            storeList: res.aroundStoreList
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
  selectStore(e){
    console.log(e.currentTarget.id)
    let pages = getCurrentPages();
    let prevPage = pages[pages.length - 2];
    prevPage.setData({
      storeId: e.currentTarget.id,
    })
    wx.navigateBack({
      delta: 1,
    })
   
  }
})