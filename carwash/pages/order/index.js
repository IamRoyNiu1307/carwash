// pages/order/index.js
const app = getApp();
const config = require('../../config.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    listype: 'all',
    orderList: [],
    query: {},
    uploadFile:''
  },

  getOrderList(type) {
    app.http('/api/order/getOrderList',{
      account:app.globalData.account
    })
      .then(res => {
        this.setData({ orderList: res.orderList });
      })
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
    this.getOrderList(this.data.query.type || this.data.listype);
  },

  changeType(e) {
    this.getOrderList(e.target.id);
    this.setData({ listype: e.target.id });
  },

  cancelOrder(e) {
    wx.showModal({
      title: '提示',
      content: `是否确认取消订单？`,
      success: res => {
        if (res.confirm) {
          app.http('/Iorder/changeorderstatus', {
            openid: app.globalData.userInfo.openid,
            sn: e.target.id
          }).then(() => {
            this.getOrderList(this.data.listype);
          });
        }
      }
    })
  },

  payOrder(e){
    console.log(e.currentTarget.id)
    wx.request({
      url: config.paymentUrl,
      data: {
        openId: app.globalData.openid
        // amount: amount,
        // openId: openId
      },
      header: {
        'content-type': 'application/x-www-form-urlencoded' // 默认值
      },
      method: "POST",
      success: function (res) {
        console.log(res);
        that.doWxPay(res.data);
      },
      fail: function (err) {
        wx.showToast({
          icon: "none",
          title: '服务器异常，清稍候再试'
        })
      },
    });
  },
  doWxPay(param) {
    //小程序发起微信支付
    wx.requestPayment({
      timeStamp: param.data.timeStamp,//记住，这边的timeStamp一定要是字符串类型的，不然会报错
      nonceStr: param.data.nonceStr,
      package: param.data.package,
      signType: 'MD5',
      paySign: param.data.paySign,
      success: function (event) {
        // success
        console.log(event);
        wx.showToast({
          title: '支付成功',
          icon: 'success',
          duration: 2000
        });
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
  }

})