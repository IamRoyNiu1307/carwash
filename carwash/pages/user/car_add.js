// pages/user/addr_add.js
const app = getApp();
const config = require('../../config.js')
Page({

  /**
   * 页面的初始数据
   */
  data: {
    id:null,
    carLicence: '',
    brand: '',
    typeName: '',
    color:'',
    carDefault: true,
    carAddrLng:'',
    carAddrLat:'',
    self_lng:'',
    self_lat:'',
    carImageList:[],
    imageIndex:0,
    mapCtx:null,
    flag:false,
    uploadFile:'',
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var _this = this
    this.setData({
      uploadFile: config.uploadFileUrl
    })
    console.log(options)
    if(options.type!='add'){
      app.http('/api/car/getCarInfo',{
        carInfoId:options.id
      }).then(res=>{
        if(res.code==0){
          _this.setData({
            id: res.carInfo.id,
            carLicence: res.carInfo.carLicence,
            brand: res.carInfo.brand,
            typeName: res.carInfo.typeName,
            color: res.carInfo.color,
            carDefault: res.carInfo.carDefault,
            carAddrLng: res.carInfo.carAddrLng,
            carAddrLat: res.carInfo.carAddrLat,
            carImageList: res.carInfo.carImageList,
          })
        }
      })
      
    } else{
      wx.getLocation({
        complete: res => {
          console.log(res)
          this.setData({
            self_lng: res.longitude,
            self_lat: res.latitude,
          });
        },
      });
    }
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
    // 使用 wx.createMapContext 获取 map 上下文
    var mapCtx = wx.createMapContext('map')
    this.setData({
      mapCtx: mapCtx,
    })
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

  
  submitCar() {
    var str = '';
    var _this = this

    if (!this.data.carLicence) {
      str = '请填写车牌号';
    } else if (!this.data.brand) {
      str = '请输入品牌名';
    } else if (!this.data.typeName) {
      str = '请输入车辆型号';
    } 

    if (str) {
      return wx.showToast({
        title: str,
        icon: 'none',
        duration: 1000
      })
    }else{
      //http
      var data = {
        id:_this.data.id,
        carLicence:_this.data.carLicence,
        brand: _this.data.brand,
        typeName: _this.data.typeName,
        color: _this.data.color,
        carAddrLng: _this.data.carAddrLng,
        carAddrLat: _this.data.carAddrLat,
        ownerAccount: app.globalData.account,
        carDefault: _this.data.carDefault
      }

      wx.request({
        url: config.host+'/api/car/setCarInfo',
        data: data,
        header: {
          'content-type': 'application/json' // 默认值
        },
        method: "POST",
        success(res){
          console.log(res.data)
          //如果变动过照片
          if(_this.data.flag){
            for (var i = 0; i < _this.data.carImageList.length;i++){
              wx.uploadFile({
                url: config.host +'/api/car/setCarImages',
                filePath: _this.data.carImageList[i].imageUrl[0],
                name: 'file',
                formData: { carInfoId: res.data.carInfo.id },//这里是上传图片时一起上传的数据
                success: (res) => {
                  wx.showToast({
                    title: '上传成功',
                    icon: 'success',
                    duration: 2000
                  })
                  setTimeout(function () {
                    wx.navigateBack({
                      delta: 1
                    })
                  }, 1500)
                }
              })
            }
          }else{

          }
        }
      })

      // app.http('/api/car/setCarInfo',data).then(res=>{
        
      // })
    }


  },
  inputChange(e) {
    // var json = {};
    // json[e.target.dataset.key] = e.detail.value;
    // this.setData(json);
    this.data[e.target.dataset.key] = e.detail.value;
  },

  bindChange: function (e) {
    const val = e.detail.value;
    this.changeRegion(val);
  },

  uploadImage() {
    var _this = this
    wx.chooseImage({
      success: res => {
        var image = 'carImageList['+this.data.imageIndex+"].imageUrl"
        this.data.imageIndex = this.data.imageIndex+1;
        console.log(res.tempFilePaths)
        _this.setData({
          flag:true,
          [image]: res.tempFilePaths
        })
      }
    })
  },
  regionchange(e) {
    var _this=this
    console.log('regionchange',e)
    if(e.type=='end'){
      _this.data.mapCtx.getCenterLocation({
        success(res) {
          console.log(res.longitude)
          console.log(res.latitude)
          
          _this.data.carAddrLng= res.longitude
          _this.data.carAddrLat= res.latitude
          
        }
      })
    }
    

    
  },
  markertap(e) {
    console.log(e)
  },
  controltap(e) {
    console.log(e)
  },
  tapMap(e){
    console.log(e)
  }
})