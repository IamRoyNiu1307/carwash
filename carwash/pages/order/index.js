// pages/order/index.js
const app = getApp();
const config = require('../../config.js')
const util = require('../../utils/util.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    listype: 'all',
    orderList: [],
    query: {},
    uploadFile:'',
    hideModal: true,
    animationData: {},
    orderInfoList: [],
    orderId: '',
    role:''
  },

  getOrderList(type) {
    if (app.globalData.role == 'consumer') {
      var data = {
        account: app.globalData.account
      }
      if(type==='1'){
        data.statusId=208
      }
      else if (type === '2') {
        data.statusId =203
      }
      else if (type === '3') {
        data.statusId =206
      }
    
      app.http('/api/order/getOrderList',data)
      .then(res => {
        this.setData({ orderList: res.orderList });
      })
    }else if(app.globalData.role=='worker'){
      app.http('/api/user/getOrderList', {
        account: app.globalData.account

        // statusId: 208
      })
        .then(res => {
          this.setData({ orderInfoList: res.orderInfoList });
        })
    }
    
      
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
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    this.setData({
      role:app.globalData.role
    })
    if (typeof this.getTabBar === 'function' &&
      this.getTabBar()) {
      this.getTabBar().setData({
        selected: 1 //这个数是，tabBar从左到右的下标，从0开始
      })
    }

    this.getOrderList(this.data.query.type || this.data.listype);
  },

  changeType(e) {
    this.getOrderList(e.target.id);
    this.setData({ listype: e.target.id });
  },

  payOrder(e){
    var _this = this
    var orderId = e.currentTarget.id
    console.log(orderId)
    wx.request({
      url: config.paymentUrl,
      data: {
        orderId:orderId,
        openid: app.globalData.openid
        //amount: amount,
        // openId: openId
      },
      header: {
        'content-type': 'application/x-www-form-urlencoded' // 默认值
      },
      method: "POST",
      success: function (res) {
        console.log(res);
        _this.doWxPay(res.data,orderId);
      },
      fail: function (err) {
        wx.showToast({
          icon: "none",
          title: '服务器异常，清稍候再试'
        })
      },
    });
  },
  
  doWxPay(param,orderId) {
    var _this = this
    var date = util.formatTime(new Date())
    //小程序发起微信支付
    wx.requestPayment({
      timeStamp: param.data.timeStamp,//记住，这边的timeStamp一定要是字符串类型的，不然会报错
      nonceStr: param.data.nonceStr,
      package: param.data.package,
      signType: 'MD5',
      paySign: param.data.paySign,
      success: function (event) {
        // success
        app.http("/api/wxpay/payComplete",{
          orderId:orderId,
          date: date
        }).then(res=>{
          wx.showToast({
            title: '支付成功',
            icon: 'success',
            duration: 2000
          });
          setTimeout(function () {
            _this.onShow()
          }, 1500)
        })
        
      },
      fail: function (error) {
        // fail
        console.log("支付失败")
        console.log(error)
      },
      complete: function () {
        // complete
        console.log("pay complete")
      }
    });
  },
  authorization(code) {
    //http = (url, data, options = {})
    return app.http('', {
      appid: app.globalData.app_id,
      secret: app.globalData.secret_code,
      js_code: code,
      grant_type: 'authorization_code'
    }, { method: 'get', baseUrl: 'https://api.weixin.qq.com/sns/jscode2session' }   )
      .then(res => {
        res.code = code;
        return res;
      });
  },
  cancelOrder(e) {
    wx.showModal({
      title: '提示',
      content: `是否确认取消订单？接单超过5分钟无法退款哦！`,
      success: res => {
        if (res.confirm) {
          wx.request({
            url: config.refundUrl,
            data: {
              //'amount': 1,
              //'incrementId': outTradeNo,
              'orderId': e.currentTarget.id,
              //'productId': productId,
              

            },
            method: 'POST',
            header: { 'content-type': 'application/x-www-form-urlencoded' },
            success: function (result) {
              console.log(result)
              if(result.data.code==0){
                wx.showToast({
                  title: '订单已取消！',
                  icon: 'success',
                  duration: 1500
                });
                setTimeout(function () {
                  _this.onShow()
                }, 1500)
              }else{
                wx.showToast({
                  title: '取消失败！',
                  icon: 'none',
                  duration: 1500
                });
              }
            }
        })
      }
    }
    })
  },



  updateOrder(e) {
    var todo = e.currentTarget.id
    console.log(this.data.orderId, todo)

    wx.navigateTo({
      url: '/pages/takePhoto/takePhoto?orderId=' + this.data.orderId + "&todo=" + todo,
    })
    this.hideModal()
  },

  // 显示遮罩层
  showModal: function (e) {
    var that = this;

    that.setData({
      hideModal: false,
      orderId: e.currentTarget.id
    })
    var animation = wx.createAnimation({
      duration: 400,//动画的持续时间 默认400ms   数值越大，动画越慢   数值越小，动画越快
      timingFunction: 'ease',//动画的效果 默认值是linear
    })
    this.animation = animation
    setTimeout(function () {
      that.fadeIn();//调用显示动画
    }, 50)
  },

  // 隐藏遮罩层
  hideModal: function () {
    var that = this;
    var animation = wx.createAnimation({
      duration: 400,//动画的持续时间 默认400ms   数值越大，动画越慢   数值越小，动画越快
      timingFunction: 'ease',//动画的效果 默认值是linear
    })
    this.animation = animation
    that.fadeDown();//调用隐藏动画   
    setTimeout(function () {
      that.setData({
        hideModal: true
      })
    }, 400)//先执行下滑动画，再隐藏模块

  },

  //动画集
  fadeIn: function () {
    this.animation.translateY(0).step()
    this.setData({
      animationData: this.animation.export()//动画实例的export方法导出动画数据传递给组件的animation属性
    })
  },
  fadeDown: function () {
    this.animation.translateY(300).step()
    this.setData({
      animationData: this.animation.export(),
    })
  },

})