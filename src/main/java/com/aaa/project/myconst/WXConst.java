package com.aaa.project.myconst;

/**
 * 微信常数类
 */
public class WXConst {

    //微信小程序appid
    public static String APPID = "wxde6415f50b2d05c3";
    //微信小程序appsecret
    public static String APPSECRET = "";
    //微信支付主体
    public static String TITLE = "测试商品";
    public static String ORDERNO = "3809069092363";
    //微信商户号
    public static String MCH_ID="";
    //微信支付的商户密钥
    public static final String KEY = "";
    //获取微信Openid的请求地址
    public static String WX_GETOPENID_URL = "";
    //支付成功后的服务器回调url
    public static final String NOTIFY_URL="https://api.weixin.qq.com/sns/jscode2session";
    //签名方式
    public static final String SIGNTYPE = "MD5";
    //交易类型
    public static final String TRADETYPE = "JSAPI";
    //微信统一下单接口地址
    public static final String PAY_URL = "https://api.mch.weixin.qq.com/pay/unifiedorder";
}
