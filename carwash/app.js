//app.js

var http = require('./utils/http.js');
const qs = require('./utils/qs/index.js');

App({
  globalData: {
    userInfo: null,
    user:null,
    account:null,
    role:null,
    app_id:'wx8087d8149331d27c',
    secret_code:'e8cb3f526ac67e41dffb8fb4201873da',
    amap: "52db7efabd38995067e0df043dd96654",
    openid:'',
    
  },
  onLaunch: function () {
    wx.getSystemInfo({
      success: e => {
        this.globalData.StatusBar = e.statusBarHeight;
        let custom = wx.getMenuButtonBoundingClientRect();
        this.globalData.Custom = custom;
        this.globalData.CustomBar = custom.bottom + custom.top - e.statusBarHeight;
      }
    })
    // 获取用户信息
    wx.getSetting({
      success: res => {
        console.log(res)
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
            },
            
          })
        }
      }
    })
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
  
  http,
  qs
})