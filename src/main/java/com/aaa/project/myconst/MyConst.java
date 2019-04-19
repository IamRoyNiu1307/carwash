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
    public static final Map<String,Integer> TIME_MAP = new HashMap<>();

    static{
        TIME_MAP.put("08时",8);
        TIME_MAP.put("12时",12);
        TIME_MAP.put("16时",16);
        TIME_MAP.put("20时",20);
        TIME_MAP.put("24时",24);
    }

    //carImage保存路径前缀
    public  static  final  String CAR_IMAGE_Pre="E:/IdeaProject/carwash/src/main/resources/static/fileupload/car/";

}
