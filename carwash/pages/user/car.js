// pages/user/car.js
const app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    carList:[
      
    ],
    model:''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    if(options.model){
      this.setData({
        model:options.model
      })
    }
    var _this = this
    app.http('/api/car/getCarList',{
      account:app.globalData.account
    }).then(res=>{
      if(res.code==0){
        _this.setData({
          carList:res.carInfoList
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
  selectCar(e){
    var _this = this
    var selectId = e.currentTarget.id
    if(this.data.model==1){
      console.log("yes")
      for(var i = 0;i<_this.data.carList.length;i++){
        if(_this.data.carList[i].id==selectId){
          let pages = getCurrentPages();
          let prevPage = pages[pages.length - 2];
          prevPage.setData({
            carInfo: _this.data.carList[i],
          })
          wx.navigateBack({
            delta: 1,
          })
        }
      }
      
    }
  }
})