//index.js
const app = getApp();
const config = require('../../config.js')
var amapFile = require('../../libs/amap-wx.js');

Page({

  data: {
    storeList:[],
    containerList: [],
    bannerList: [
      { imgs: '/image/huodong.jpg' }, { imgs: '/image/huodong.jpg' }, { imgs: '/image/huodong.jpg' }
    ],
    markers: [],
    listype: 0,
    longitude: 0,
    latitude: 0,
    uploadFile:''
  },

  onLoad: function () {
    this.setData({
      uploadFile:config.uploadFileUrl
    })
  },

  onShow: function () {
    
    var _this = this;
    if(!app.globalData.openid){
      wx.login({
      success(loginRes) {
        if (app.globalData.user == null) {
          _this.authorization(loginRes.code).then(res=>{
            if(res.openid){
              console.log('openid:',res.openid)
              app.globalData.openid=res.openid
              
              //登录
              _this.bind()
            }
          })
          
        }
      }
    });
    }
    

    wx.getLocation({
      complete: res => {
        this.setData({
          longitude: res.longitude,
          latitude: res.latitude
        });
        //获取附近门店
        app.http('/api/store/aroundStoreList',
        {
          posLng: _this.data.longitude,
          posLat:_this.data.latitude
        },{
          useCookie:false
        }
        ).then(res=>{
          if(res.code==0){
            _this.setData({
              storeList: res.aroundStoreList
            })
            
          }
          //获取附近钥匙柜
          app.http('/api/key/aroundContainer',
            {
              posLng: _this.data.longitude,
              posLat: _this.data.latitude
            }, {
              useCookie: false
            }
          ).then(res => {
            if (res.code == 0) {
              _this.setData({
                containerList: res.aroundContainerList
              })
              _this.createContainerMarks()
            }
          })
        })

        
      },
    });
    
    

  },
  createContainerMarks(){
    var _this = this
    var containerList = _this.data.containerList
    var markers = []
    for (var i = 0; i < containerList.length;i++){
      markers.push({
        id: 'c'+i,
        iconPath: '/image/container.png',
        longitude: containerList[i].keyContainer.posLng,
        latitude: containerList[i].keyContainer.posLat,
        width:50,
        height:50,
        callout: {
          content: containerList[i].keyContainer.containerName,
          padding: 10,
          display: 'ALWAYS',
          textAlign: 'center'
        }
      })
    }
    _this.setData({
      markers:markers
    })
    console.log("container:",this.data.markers)
  },
  clickMap(e) {
    wx.navigateTo({
      url: `/pages/index/infos?id=${e.markerId}`
    })
  },
  clickMarker(e){
    var _this = this
    var markers = _this.data.markers
    var marker = {}
    console.log(e.markerId)
    for(var i = 0;i<markers.length;i++){
      if(e.markerId == markers[i].id){
        marker = markers[i]
        break;
      }
    }
    wx.openLocation({

      latitude: marker.latitude, // 纬度，浮点数，范围为90 ~ -90

      longitude: marker.longitude, // 经度，浮点数，范围为180 ~ -180。

      name: marker.callout.content, // 位置名

      address: '', // 地址详情说明

      scale: 15, // 地图缩放级别,整形值,范围从1~28。默认为最大

      infoUrl: '' // 在查看位置界面底部显示的超链接,可点击跳转

    });
  },
  
  getUserAccount(openid) {
    var that = this
    wx.request({
      url: config.getUserAccountUrl,
      data: { "openid": openid },
      header: {
        'content-type': 'application/json' // 默认值
      },
      method: "GET",
      success: function (res) {
        if (res.data != null) {
          that.globalData.user = res.data.user
          console.log('通过openid获取账号···', that.globalData.user)
        } else {
          console.log(res.data.msg)
        }

      },
      error: function (data) {
        console.log(data)
      }
    })
  },

  authorization(code) {
    //http = (url, data, options = {})
    return app.http('', {
      appid: app.globalData.app_id,
      secret: app.globalData.secret_code,
      js_code: code,
      grant_type: 'authorization_code'
    }, { method: 'get', baseUrl: 'https://api.weixin.qq.com/sns/jscode2session' })
      .then(res => {
        res.code = code;
        return res;
      });
  },

  
  ////////////////////////////////////////////

  changeType: function (e) {
    var _this = this;
    _this.setData({ listype: e.currentTarget.id });
  },

  quickcreate:function(){
    wx.navigateTo({
      url: '/pages/quickcreate/quickcreate',
    })

    // wx.scanCode({
    //   onlyFromCamera: true,
    //   success(res) {
    //     console.log(res)
    //   }
    // })
  },
  bind() {
    var _this = this
    app.http('/api/consumer/bind', { openid: app.globalData.openid }).then(res => {
      if (res.account) {
        app.globalData.account= res.account

      }
    })
  },
  toLogin() {
    wx.navigateTo({
      url: '/pages/user/login',
    })
  }
})
