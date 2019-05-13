// pages/order/traceOrder.js
var amapFile = require('../../libs/amap-wx.js');
var mapConfig = require('../../libs/config.js');
const config = require('../../config.js')
const app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    longitude:'',
    latitude:'',
    markers: [],
    polyline: [],
    logList:[],
    date:'',
    uploadFile:'',
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var _this = this
    this.setData({
      uploadFile: config.uploadFileUrl
    });
    if(options.orderId){
      console.log(options.orderId)
      app.http('/api/order/traceOrder',{
        orderId: options.orderId
      }).then(res=>{
        _this.setData({
          longitude:parseFloat(res.carInfo.carAddrLng+res.store.posLng)/2,
          latitude: parseFloat(res.carInfo.carAddrLat + res.store.posLat) / 2,
          'markers[0]': {
            iconPath: '/image/p.png',
            id: 0,
            latitude: res.carInfo.carAddrLat,
            longitude: res.carInfo.carAddrLng,
            width: 35,
            height: 35,
            callout: {
              content: res.carInfo.carLicence,
              padding: 10,
              display: 'ALWAYS',
              textAlign: 'center',
              borderRadius: 10,
              // color:'#fff',
              // bgColor: '#0081ff'
            }
          },
          'markers[1]': {
            iconPath: '/image/d.png',
            id: 1,
            latitude: res.store.posLat,
            longitude: res.store.posLng,
            width: 35,
            height: 35,
            callout: {
              content: res.store.storeName,
              padding: 10,
              display: 'ALWAYS',
              textAlign: 'center',
              borderRadius:10,
              // color: '#fff',
              // bgColor: '#0081ff'
            }
          },
        })
        if (res.userLocation && res.order.statusId!=203){
          var icon
          if(res.order.statusId==208){
            icon = '/image/worker.png'
            _this.setData({
              'markers[2]': {
                iconPath: icon,
                id: 2,
                latitude: res.userLocation.posLat,
                longitude: res.userLocation.posLng,
                width: 35,
                height: 35,
                callout: {
                  content: '洗车员：' + res.user.userName + " " + res.user.phonenumber,
                  padding: 10,
                  display: 'ALWAYS',
                  textAlign: 'center',
                  borderRadius: 10,
                  color: '#fff',
                  bgColor: '#0081ff'
                }
              },
            })
          } 
          if (res.order.statusId == 211 || res.order.statusId == 212){
            icon = '/image/car.png'
            _this.setData({
              'markers[2]': {
                iconPath: icon,
                id: 2,
                latitude: res.userLocation.posLat,
                longitude: res.userLocation.posLng,
                width: 35,
                height: 35,
                callout: {
                  content: '洗车员：' + res.user.userName + " " + res.user.phonenumber,
                  padding: 10,
                  display: 'ALWAYS',
                  textAlign: 'center',
                  borderRadius: 10,
                  color: '#fff',
                  bgColor: '#0081ff'
                }
              },
            })
          }
          
        }
        if(res.logList.length>0){
          var dateStr = res.logList[0].createDate.split(" ")[0].split("-")
          for(var i = 0 ;i<res.logList.length;i++){
            var timeStr = res.logList[i].createDate.split(" ")[1].split(":")
            res.logList[i].createDate = timeStr[0]+":"+timeStr[1]
          }
          _this.setData({
            date:dateStr[1]+"-"+dateStr[2],
            logList: res.logList,
          })
        }
        _this.gaocode(res.carInfo.carAddrLng + ',' + res.carInfo.carAddrLat, res.store.posLng + ',' + res.store.posLat)
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
  gaocode(origin, destination,){
    var that = this;
    var key = mapConfig.Config.key;
    var myAmapFun = new amapFile.AMapWX({ key: key });
    myAmapFun.getDrivingRoute({
      origin: origin,
      destination: destination,
      success: function (data) {
        var points = [];
        if (data.paths && data.paths[0] && data.paths[0].steps) {
          var steps = data.paths[0].steps;
          for (var i = 0; i < steps.length; i++) {
            var poLen = steps[i].polyline.split(';');
            for (var j = 0; j < poLen.length; j++) {
              points.push({
                longitude: parseFloat(poLen[j].split(',')[0]),
                latitude: parseFloat(poLen[j].split(',')[1])
              })
            }
          }
        }
        that.setData({
          polyline: [{
            points: points,
            color: "#37bca1",
            width: 8
          }]
        });
        

      },
      fail: function (info) {

      }
    })
  }

})