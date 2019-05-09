package com.aaa.project.myconst;

import java.util.HashMap;
import java.util.Map;

/**
 * 常数类
 */
public class MyConst {
    //高德地图API Web服务的key
    public static final String MAP_WEB_KEY = "553ac3eed11ec277ed5afe84e3d492aa";
    //高德地图API 微信小程序服务的key
    public static final String MAP_WX_KEY = "19ef95cf4326dfae068dae506181fd15";
    //地理解析api
    public static final String GRO_URL = "https://restapi.amap.com/v3/geocode/geo";
    //逆地理解析api
    public static final String REGRO_URL = "https://restapi.amap.com/v3/geocode/regeo";
    //高德地图 测量多点到目的点的距离
    public static final String DISTANCE_URL = "https://restapi.amap.com/v3/distance";

    //微信小程序appid
    public static final String APPID = "wxde6415f50b2d05c3";
    //微信小程序appsecret
    public static final String APPSECRET = "300bda0ea35e7f536f4d8125dac6783a";
    //搜索附近钥匙柜的搜索范围
    public static final int MAX_CONTAINER_DISTANCE = 10000;
    //高德地图距离计算 直线距离
    public static final int DISTANCE_TYPE_STRAIGHT = 0;
    //高德地图距离计算 驾车导航距离
    public static final int DISTANCE_TYPE_CAR = 1;
    //高德地图距离计算 公交规划距离
    public static final int DISTANCE_TYPE_BUS = 2;
    //高德地图距离计算 步行距离
    public static final int DISTANCE_TYPE_STEP = 3;
    //时段map
    public static final Map<String, Integer> TIME_MAP = new HashMap<>();
    //模式：快速下单
    public static final int MODEL_QUICKCREATE = 0;
    //模式: 指定门店下单
    public static final int MODEL_SELECTSTORE = 1;
    //订单状态：待接单
    public static final int STATUS_ORDER_CREATED = 200;
    //订单状态：代付款
    public static final int STATUS_ORDER_UNPAY = 201;
    //订单状态：已付款
    public static final int STATUS_ORDER_PAID = 202;
    //订单状态：已取消
    public static final int STATUS_ORDER_CANCELED = 206;
    //订单状态：进行中
    public static final int STATUS_ORDER_ONGOING = 208;
    //订单状态：已完成
    public static final int STATUS_ORDER_FINISHED = 203;
    //订单状态：已评价
    public static final int STATUS_ORDER_EVALUATED = 205;
    //订单状态：进行中
    public static final int STATUS_ORDER_RUNNING = 208;
    //订单状态：已还车
    public static final int STATUS_ORDER_RETUENED = 213;
    //账号状态：可用
    public static final int STATUS_ACCOUNT_ENABLE = 501;
    // public static final int STATUS_ORDER_PAID = 202;
    //短信类型：账号登录、注册
    public static final int TYPE_ACCOUNT = 0;
    //短信类型：获得取件码
    public static final int TYPE_KEY = 1;
    //发送短信目的：登录
    public static final String TODO_LOGIN = "login";
    //发送短信目的：注册
    public static final String TODO_REGISTER = "register";

    //钥匙状态：已寄存
    public static final Integer STATUS_KEY_STORED = 300;
    //钥匙状态：已取出
    public static final Integer STATUS_KEY_TAKED = 301;
    //账号状态：待审核
    public static final Integer STATUS_ACCOUNT_UNCHECK = 500;
    //格子状态：占用
    public static final Integer STATUS_BOX_USED = 601;
    //格子状态：空闲
    public static final Integer STATUS_BOX_FREE = 600;
    //洗车员位置更新最大间隔
    public static final Long MAX_INTERVAL = 600000l;

    static {
        TIME_MAP.put("08时", 8);
        TIME_MAP.put("12时", 12);
        TIME_MAP.put("16时", 16);
        TIME_MAP.put("20时", 20);
        TIME_MAP.put("24时", 24);
    }

    //车辆照片上传路径
//    public static final String UPLOAD_CAR_IMAGE = "/Users/roy/project/carwash/src/main/resources/static/fileupload/car/";
    public static final String UPLOAD_CAR_IMAGE ="E:\\IdeaProject\\carwash\\src\\main\\resources\\static\\fileupload\\store\\";
    //车辆照片请求路径
    public static final String CAR_IMAGE_DIR = "/car/";
    //洗车照片上传路径
    public static final String UPLOAD_WARHCAR_IMAGE = "/Users/roy/project/carwash/src/main/resources/static/fileupload/washcar/";
    //洗车照片请求路径
    public static final String WASHCAR_IMAGE_DIR = "/washcar/";
    //新增门店图标上传路径
//     public  static  final  String UPLOAD_STORE_ICON="/Users/roy/project/pcarwash/src/main/resources/static/fileupload/store/logo/";
    public  static  final  String UPLOAD_STORE_ICON ="E:\\IdeaProject\\carwash\\src\\main\\resources\\static\\fileupload\\store\\logo\\";
    //store图标请求路径
    public static final String STORE_ICON_IMAGE_DIR = "/store/logo/";
    //用户驾驶证照片上传路径
    public static final String DRIVING_LICENCE_IMG = "/Users/roy/project/carwash/src/main/resources/static/fileupload/user/drivingLicence/";
    //用户驾驶证照片请求路径
    public static final String DRIVING_LICENCE_ICON_IMG = "/user/drivingLicence/";
    //洗车员角色id
    public static final long STAFF_ROLE_ID = 102;
    //门店审核 通过ID
    public static final int PASS_CONST_ID = 105;
    //门店审核 拒绝ID
    public static final int REFUSE_CONST_ID = 106;
    //role 商家
    public static final long Role_MERCHANT = 100;
    //role 店长
    public static final long Role_MANAGER = 101;
}
