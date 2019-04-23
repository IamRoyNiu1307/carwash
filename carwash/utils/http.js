
const qs = require('./qs/index.js');
const config = require('../config.js');

const http = (url, data, options = {}) => {
  var promise = new Promise((resolve, reject) => {

    var baseUrl = options.baseUrl || config.host;
    var header = { 'content-type': 'application/x-www-form-urlencoded'}
    if (options.useCookie==true&&wx.getStorageSync('cookieKey')){
      header.Cookie = wx.getStorageSync('cookieKey')
    }
    
    wx.request({
      url: `${baseUrl}${url}`,
      data: options.method ? data : qs.stringify(data),
      method: options.method || 'POST',
      header: header,
      success: function (res) {//服务器返回数据
        if (options.baseUrl) {
          resolve(res.data);
        } else {
          console.log(res)
          var title = res.data.msg || res.msg 
          if (res.data.status === 200||res.statusCode==200) {
            
            resolve(res.data);
          } else {//返回错误提示信息
            
            reject(res.data.msg);
          }
          if(title){
            wx.showToast({
              title: title,
              icon: 'none',
              duration: 1500
            });
          }
          
        }
        if (res && res.header && res.header['Set-Cookie']) {
          wx.setStorageSync('cookieKey', res.header['Set-Cookie']);   //保存Cookie到Storage
        }

      },
      error: function (e) {
        wx.showToast({
          title: '网络繁忙，请稍后重试',
          icon: 'none',
          duration: 1000
        });
        reject('网络繁忙，请稍后重试');
      }
    })
  });
  return promise;
};

module.exports = http
