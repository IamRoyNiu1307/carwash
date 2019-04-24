// pages/index/infos.js
const app = getApp();
const config = require('../../config.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    info: {},
    storeId:'',
    envList:[],
    uploadFile: ''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var _this = this
    this.setData({
      storeId:options.storeId,
      storeName: options.storeName,
      storeStreet: options.storeStreet,
      contactsPhone: options.contactsPhone,
      uploadFile: config.uploadFileUrl
    })
    app.http('/api/store/getStoreEnv',{
      storeId:_this.data.storeId
    }).then(res=>{
      if(res.code==0){
        _this.setData({
          envList:res.envList
        })
      }
    })
    
  },
  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  },


  previewImage(e) {
    var list = [];
    for (var i = 0; i < this.data.info.businessadslist.length; i++) {
      list.push(this.data.info.businessadslist[i].imgs);
    }
    wx.previewImage({
      current: e.target.id, // 当前显示图片的http链接
      urls: list // 需要预览的图片http链接列表
    })
  }
})