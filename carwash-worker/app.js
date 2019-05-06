//app.js

var http = require('./utils/http.js');
const qs = require('./utils/qs/index.js');

App({
  globalData: {
    userInfo: null,
    user:null,
    account:null,
    app_id:'wxde6415f50b2d05c3',
    secret_code:'300bda0ea35e7f536f4d8125dac6783a',
    amap: "52db7efabd38995067e0df043dd96654",
    openid:''
  },
  onLaunch: function () {
    // 获取用户信息
    wx.getSetting({
      success: res => {
        if (res.authSetting['scope.userInfo']) {
          // 已经授权，可以直接调用 getUserInfo 获取头像昵称，不会弹框
          wx.getUserInfo({
            success: res => {
              // 可以将 res 发送给后台解码出 unionId
              this.globalData.userInfo = res.userInfo

              // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
              // 所以此处加入 callback 以防止这种情况
              if (this.userInfoReadyCallback) {
                this.userInfoReadyCallback(res)
              }
            }
          })
        }
      }
    })
    this.sendLocation()
  },
  bind(){
    var _this = this
    http('/api/consumer/bind',_this.globalData.openid).then(res=>{
      if(res.account){
        _this.account=res.account
        return res.account
      }
    })
  },
  sendLocation(){
    var _this = this
    setInterval(function () {
      //循环执行代码
      console.log("aaaaaaa")
      wx.getLocation({
        complete: res => {
          
          var lng = res.longitude
          var lat = res.latitude
          
          http('/api/user/insertLocation',{
            account:_this.globalData.account,
            posLng:lng,
            posLat:lat
          }).then(res=>{})

        }})
    }, 300000) //循环时间 这里是1秒 
  },
  http,
  qs
})