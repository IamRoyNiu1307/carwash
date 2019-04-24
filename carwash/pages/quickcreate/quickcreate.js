// pages/order/preview.js
const app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    info: {},
    addrInfo: null,
    dateTime: '',
    startTime: '',
    queryString: {},
    multiIndex: [0, 0, 0, 0, 0, 0],
    index: 0,
    multiArray: [],
    array: ['50元以下', '50-100元', '100-200元', '200-500元','500元以上'],
    arrayIndex:0,
    year: "",
    month: "",
    day: "",
    startHour: "",
    endHour: "",
    // items: [
    //   { id: 0, value: '车身清洗', detail: '高压洗车，除锈、去除沥青',itemChecked:false},
    //   { id: 1, value: '上蜡增艳', detail: '车身上蜡，镜面处理', itemChecked: false},
    //   { id: 2, value: '内饰美容', detail: '仪表台、顶棚、座椅、座套等衬里的吸尘清洁保护', itemChecked: false},
    //   { id: 3, value: '漆面处理', detail: '氧化膜处理、飞漆处理、酸雨处理、漆面划痕处理', itemChecked: false},
    //   { id: 4, value: '汽车防护', detail: '防爆太阳膜、安装防盗器、安装静电放电器等', itemChecked: false},
    // ],
    items:[],
    orderComment:'无',
    orderType:0,
    storeId:null,
    carInfo:null,
  },
  //月份计算
  surplusMonth: function (year) {
    var date = new Date();
    var year2 = date.getFullYear()
    var month = date.getMonth() + 1
    var day = date.getDate()
    var hour = date.getHours()
    var minute = date.getMinutes()
    var second = date.getSeconds()
    var monthDatas = [];
    if (year == year2) {
      var surplusMonth = 12 - month;
      monthDatas.push(month + "月")
      for (var i = month; i < 12; i++) {
        monthDatas.push(i + 1 + "月")
      }
    } else {
      for (var i = 0; i < 12; i++) {
        monthDatas.push(i + 1 + "月")
      }
    }

    return monthDatas;
  },
  //天数计算
  surplusDay: function (year, month, day) {
    var days = 31;
    var dayDatas = [];
    var date = new Date();
    var year2 = date.getFullYear()
    var month2 = date.getMonth() + 1

    switch (parseInt(month)) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        days = 31;

        break;
      //对于2月份需要判断是否为闰年
      case 2:
        if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
          days = 29;

          break;
        } else {
          days = 28;

          break;
        }

      case 4:
      case 6:
      case 9:
      case 11:
        days = 30;

        break;

    }
    if (year == year2 && month == month2) {
      dayDatas.push(day + "日")
      for (var i = day; i < days; i++) {
        dayDatas.push(i + 1 + "日")
      }
    } else {
      for (var i = 0; i < days; i++) {
        dayDatas.push(i + 1 + "日")
      }
    }
    return dayDatas;
  },
  //时间计算
  surplusHour: function (year, month, day, hour) {
    var date = new Date();
    var year2 = date.getFullYear()
    var month2 = date.getMonth() + 1
    var day2 = date.getDate();
    var hourEnd = [12, 16, 20, 24];
    var hours = [[ '08时', '12时', '16时', '20时'], ['12时', '16时', '20时', '24时']];

    if (year == year2 && month == month2 && day == day2) {
      var hour2 = hour
      var j = 0;
      for (var i = 0; i < hourEnd.length; i++) {
        if ((hourEnd[i] - hour) > 0) {
          console.log("i" + i)
          j = i;
          break;
        }
      }
      var surplusHours = [[], []];
      for (var i = j; i < hours[0].length; i++) {
        surplusHours[0].push(hours[0][i]);
      }
      for (var i = j; i < hours[1].length; i++) {
        surplusHours[1].push(hours[1][i]);
      }

      hours = surplusHours;
    }
    return hours;
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //storeId有值的时候 说明是指定门店下单，调用接口获取该门店下的所有业务
    //反之为快速下单，获取所有默认服务
    if (options.storeId){
      var storeId = parseInt(options.storeId)
      this.setData({
        storeId:storeId
      })
    }

    this.setData({ startTime: this.getNowFormatDate(), orderData: '请选择时间', queryString: options });
    var date = new Date();
    var year = date.getFullYear()
    var month = date.getMonth() + 1
    var day = date.getDate()
    var hour = date.getHours()


    var surplusMonth = this.surplusMonth(year);
    var surplusDay = this.surplusDay(year, month, day);
    var surplusHour = this.surplusHour(year, month, day, hour)
    this.setData({
      multiArray: [[year + '年', (year + 1) + '年', (year + 2) + '年'],
        surplusMonth,
        surplusDay,
      surplusHour[0],
      ['~'],
      surplusHour[1]
      ],
      year: year,
      month: month,
      day: day,
      startHour: surplusHour[0][0],
      endHour: surplusHour[1][0],
    })
    var dateStr =
      this.data.multiArray[0][this.data.multiIndex[0]] +
      this.data.multiArray[1][this.data.multiIndex[1]] +
      this.data.multiArray[2][this.data.multiIndex[2]] +
      this.data.multiArray[3][this.data.multiIndex[3]] +
      this.data.multiArray[4][this.data.multiIndex[4]] +
      this.data.multiArray[5][this.data.multiIndex[5]];
    this.setData({
      orderData: dateStr
    })
  },
  varietiesChange: function (e) {
    var Varieties = this.data.array[parseInt(e.detail.value)]
    this.setData({
      Varieties: Varieties
    })
  },
  warehouseChange: function (e) {
    var Warehouse = this.data.array[parseInt(e.detail.value)]
    this.setData({
      Warehouse: Warehouse
    })
  },
  //某一列的值改变时触发
  bindMultiPickerColumnChange: function (e) {
    var date = new Date();
    var year1 = date.getFullYear()
    var month1 = date.getMonth() + 1
    var day1 = date.getDate()
    var hour1 = date.getHours()
    var data = {
      multiArray: this.data.multiArray,
      multiIndex: this.data.multiIndex,
      year: this.data.year,
      month: this.data.month,
      day: this.data.day,
      startHour: this.data.startHour,
      endHour: this.data.startHour,
    };
    data.multiIndex[e.detail.column] = e.detail.value;
    switch (e.detail.column) {
      case 0:
        var yearStr = data.multiArray[e.detail.column][e.detail.value];
        var year = yearStr.substring(0, yearStr.length - 1)
        data.year = parseInt(year);
        var surplusMonth = this.surplusMonth(year);
        data.multiArray[1] = surplusMonth;

        if (data.year == year1) {
          data.month = month1;
        } else {
          data.month = 1;
        }
        if (data.year == year1 && month1 == data.month) {
          data.day = day1;
        } else {
          data.day = 1;
        }

        var surplusDay = this.surplusDay(data.year, data.month, data.day);

        data.multiArray[2] = surplusDay;
        var surplusHour;
        if (data.year == year1 && month1 == data.month && data.day == day1) {
          surplusHour = this.surplusHour(data.year, data.month, data.day, hour1)
        } else {
          surplusHour = this.surplusHour(data.year, data.month, data.day, 1)
        }

        data.multiArray[3] = surplusHour[0];
        data.multiArray[5] = surplusHour[1];


        data.startHour = surplusHour[0];
        data.endHour = surplusHour[1];

        data.multiIndex[1] = 0;
        data.multiIndex[2] = 0;
        data.multiIndex[3] = 0;
        data.multiIndex[5] = 0;
        break;
      case 1:

        var monthStr = data.multiArray[e.detail.column][e.detail.value];
        var month = monthStr.substring(0, monthStr.length - 1);

        data.month = month;
        data.day = 1;

        if (data.year == year1 && month1 == data.month) {
          data.day = day1;
        } else {
          data.day = 1;
        }

        var surplusDay = this.surplusDay(data.year, data.month, data.day);

        data.multiArray[2] = surplusDay;

        var surplusHour;
        if (data.year == year1 && month1 == data.month && data.day == day1) {
          surplusHour = this.surplusHour(data.year, data.month, data.day, hour1)
        } else {
          surplusHour = this.surplusHour(data.year, data.month, data.day, 1)
        }


        data.multiArray[3] = surplusHour[0];
        data.multiArray[5] = surplusHour[1];


        data.startHour = surplusHour[0];
        data.endHour = surplusHour[1];
        data.multiIndex[2] = 0;
        data.multiIndex[3] = 0;
        data.multiIndex[5] = 0;
        break;
      case 2:
        var dayStr = data.multiArray[e.detail.column][e.detail.value];
        var day = dayStr.substring(0, dayStr.length - 1);
        data.day = day;

        var surplusHour;
        if (data.year == year1 && month1 == data.month && data.day == day1) {
          surplusHour = this.surplusHour(data.year, data.month, data.day, hour1)
        } else {
          surplusHour = this.surplusHour(data.year, data.month, data.day, 1)
        }


        data.multiArray[3] = surplusHour[0];
        data.multiArray[5] = surplusHour[1];



        data.startHour = surplusHour[0];
        data.endHour = surplusHour[1];

        data.multiIndex[3] = 0;
        data.multiIndex[5] = 0;
        break;
      case 3:

        var hourStr = data.multiArray[e.detail.column][e.detail.value];
        var hour = hourStr.substring(0, hourStr.length - 1);
        data.startHour = hour;
        var endhours2 = [];
        if (data.year == year1 && data.month == month1 && data.day == day1) {
          var surplusHour = this.surplusHour(data.year, data.month, data.day, hour);
          endhours2 = surplusHour[1]
        } else {
          var end = ['12时', '16时', '20时', '24时'];
          for (var i = e.detail.value; i < end.length; i++) {
            endhours2.push(end[i]);
          }
        }


        data.multiArray[5] = endhours2;
        data.multiIndex[5] = 0;

        break;
      case 5:
        var hourStr = data.multiArray[e.detail.column][e.detail.value];
        var hour = hourStr.substring(0, hourStr.length - 1);
        data.endHour = hour;
        break;
    }
    this.setData(data)

  },
  bindSinglePickerChange:function(e){
    this.setData({
      arrayIndex: e.detail.value
    })
  },
  //value 改变时触发 change 事件
  bindMultiPickerChange: function (e) {

    var dateStr =
      this.data.multiArray[0][this.data.multiIndex[0]] +
      this.data.multiArray[1][this.data.multiIndex[1]] +
      this.data.multiArray[2][this.data.multiIndex[2]] +
      this.data.multiArray[3][this.data.multiIndex[3]] +
      this.data.multiArray[4][this.data.multiIndex[4]] +
      this.data.multiArray[5][this.data.multiIndex[5]];
    this.setData({
      orderData: dateStr
    })
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    var _this = this
    app.http('/api/car/getDefaultCar',{
      account:app.globalData.account
    }).then(res=>{
      if(res.code==0){
        _this.setData({
          carInfo:res.carInfo
        })
      }
    })
    app.http('/api/store/getServices',{
      storeId: _this.data.storeId
    }).then(res=>{
      if (res.serviceList){
        var serviceList = res.serviceList
        for (var i = 0; i < serviceList.length; i++) {
          serviceList[i].itemChecked = false
        }
        _this.setData({
          items: serviceList
        })
        console.log("------", this.data.items)
      }
    })
    
  },

  /////////////////////////
  // getInfo(options) {
  //   app.http('/Iorder/addorderindex',
  //     { openid: app.globalData.userInfo.openid, businessid: options.id, type: options.type })
  //     .then(res => {
  //       this.setData({
  //         info: res.businessinfo,
  //         addrInfo: res.addrlist[0] || null
  //       });
  //     });
  // },
  dateTimeChange(e) {
    this.setData({ dateTime: e.detail.value });
  },
  getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
      month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
      strDate = "0" + strDate;
    }
    var currentdate = year + seperator1 + month + seperator1 + strDate;
    return currentdate;
  },

  selectItem(e){
    var selectId = e.target.id
    console.log("e.target.id", e.target.id)
    var _this = this
    var flag
    for(var i = 0;i<_this.data.items.length;i++){
      if (selectId == _this.data.items[i].id){
        var target = 'items[' + i+'].itemChecked'
        if (_this.data.items[i].itemChecked == true) {
          flag = false
        } else {
          flag = true
        }
        _this.setData({
          [target]: flag
        })
      }
      
    }
    
  },
  submitOrder() {
    console.log(this.data)
    var data = this.data
    var flag = true
    var text
    var selectItem = []
    var startHour = data.multiArray[3][data.multiIndex[3]]
    var endHour = data.multiArray[5][data.multiIndex[5]]

    for(var i = 0;i<data.items.length;i++){
      console.log("itemChecked", data.items[i].itemChecked)
      if(data.items[i].itemChecked==true){
        selectItem.push(data.items[i].id)
      }
    }
    if (selectItem.length==0){
      flag=false
      text='请选择服务'
    }
    if(!flag){
      return wx.showToast({
        title: text,
        icon: 'none',
        duration: 1000
      })
    }
    
    wx.showModal({
      title: '提示',
      content: `预约时间为 ${this.data.orderData} ？`,
      success: res => {
        if (res.confirm) {
          
          var sendData={
            consumerAccount:'18625521997',
            serviceIdList:JSON.stringify(selectItem),
            startTime:data.startTime,
            startHour:startHour,
            endHour:endHour,
            expectCostId: parseInt(data.arrayIndex) + 1,
            orderComment:data.orderComment,
            carId: data.carInfo.id
          }
          if (data.storeId) {
            sendData.storeId = data.storeId
          }
          console.log("aaaaaaaaa",sendData)
          //测试
          wx.navigateTo({
            url: `/pages/order/prisucc?id=${res}`,
          })
          //提交订单
          app.http("/api/order/createOrder", sendData,{
              baseUrl:'http://192.168.1.25'
          }).then((res)=>{
            if(res.code==0)
              url: `/pages/order/prisucc?id=1`
          })
          // app.http('/Iorder/addorder', {
          //   businessid: this.data.info.business_id,
          //   openid: app.globalData.userInfo.openid,
          //   type: this.data.queryString.type,
          //   dotime: this.data.dateTime,
          //   addrid: this.data.addrInfo.id
          // }).then((res) => {
          //   wx.navigateTo({
          //     url: `/pages/order/prisucc?id=${res}`,
          //   })
          // });
        }
      }
    })

  },
  commentInput(e){
    this.setData({
      orderComment: e.detail.value
    })
  }
  
})