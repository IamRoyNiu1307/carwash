// pages/door/index.js
const app = getApp();
const config = require('../../config.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    orderList:[]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
  },
  
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.setData({
      uploadFile: config.uploadFileUrl
    });
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

  
  startTimeChange(e) {
    this.data.info.begintime = e.detail.value || '';
    this.setData({ startTime: e.detail.value || '' });
  },

  endTimeChange(e) {
    this.data.info.endtime = e.detail.value || '';
    this.setData({ endTime: e.detail.value || '' });
  },


  regionChange(e) {
    this.data.info.business_provinceid = e.detail.value[0];
    this.data.info.business_cityid = e.detail.value[1];
    this.data.info.business_address = e.detail.value[2];
    this.setData({ region: e.detail.value });
  },




  uploadImage() {
    wx.chooseImage({
      success: res => {

        for (var i = 0; i < res.tempFilePaths.length; i++) {
          wx.uploadFile({
            url: 'https://water.ulittile.com/Home/IPublic/uploadimgbyisream', //仅为示例，非真实的接口地址
            filePath: res.tempFilePaths[i],
            name: 'file',
            formData: { type: 2 },
            success: res => {
              var data = JSON.parse(res.data).result;
              var list = this.data.imageList || [];
              for (var i = 0; i < data.length; i++) {
                list.push({ url: data[i].imgpath });
              }
              this.setData({ imageList: list });
            }
          })
        }
      }
    })
  },

  inputChange(e) {
    this.data.info[e.target.id] = e.detail.value;
  },

  
})