// pages/takePhoto/takePhoto.js
const app = getApp()
const config = require('../../config.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    context:null
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    console.log("createContext")
    //创建相机上下文
    if (this.context == null) {
      this.setData({
        orderId:options.orderId,
        context: wx.createCameraContext()
      })
    }
  },

  takePhoto: function () {
    var _this = this
    console.log("takephoto")
    //拍摄
    this.data.context.takePhoto({
      quality: 'normal',
      success: (res) => {
        // this.setData({
        //   src: res.tempImagePath
        // })
        this.setData({
          imgsrc: res.tempImagePath
        })
        wx.showToast({
          title: '正在上传···',
          icon: 'loading',
          duration: 20000,
          mask: true

        })
        wx.uploadFile({
          url: config.updateOrderUrl,
          filePath: res.tempImagePath,
          name: 'file',
          formData: {
            'orderId': _this.data.orderId
          },
          header: {
            'content-type': 'multipart/form-data'
          },
          success: function (res) {
            var data = res.data
            var code = JSON.parse(data)["code"]
            if(code==0){
              wx.showToast({
                title: '照片已上传',
                icon: 'succes',
                duration: 1500,
                mask: true
              })
              setTimeout(function () {
                wx.navigateBack({
                  delta: 1
                })
              }, 1500)
            }
          }
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

  }
})