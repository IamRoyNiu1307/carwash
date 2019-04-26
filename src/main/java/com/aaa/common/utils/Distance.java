package com.aaa.common.utils;

import com.aaa.project.myconst.MyConst;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Distance {


    /**
     * 求出某坐标到多坐标点的距离
     * @param posList 目标点列表 字符串格式 ，分隔 例：131.568456,34.854621
     * @param location 当前位置坐标
     * @param type 路径计算的方式和方法
     *             0：直线距离
     *             1：驾车导航距离（仅支持国内坐标）
     *                必须指出，当为1时会考虑路况，故在不同时间请求返回结果可能不同。
     *                此策略和驾车路径规划接口的 strategy=4策略基本一致，策略为“ 躲避拥堵的路线，但是可能会存在绕路的情况，耗时可能较长 ”
     *                若需要实现高德地图客户端效果，可以考虑使用驾车路径规划接口
     *             2：公交规划距离（仅支持同城坐标,QPS不可超过1，否则可能导致意外）
     *             3：步行规划距离（仅支持5km之间的距离）
     * @return 距离列表
     */
    public static List<Integer> getDistanceList(List<String> posList,String location,int type){
        List<Integer> distanceList = new ArrayList<>();

        String posStr = "";

        for(String current : posList){
            if(!"".equals(posStr)){
                posStr+="|";
            }
            posStr+=current;
        }

        String param = "origins="+posStr+"&destination="+location+"&type="+type+"&output=json&key="+ MyConst.MAP_WEB_KEY;

        String resultJson = HttpRequestUtil.sendGet(MyConst.DISTANCE_URL, param);

        JSONObject jsonObject = new JSONObject(resultJson);

        JSONArray results = jsonObject.getJSONArray("results");

        for(int i = 0;i<results.length();i++){
            int distance = results.getJSONObject(i).getInt("distance");
            distanceList.add(distance);
        }

        return distanceList;
    }

    /**
     * 路径规划距离
     * @param origins 起点
     * @param destination 终点
     * @param type 路径计算的方式和方法
     *             0：直线距离
     *             1：驾车导航距离（仅支持国内坐标）
     *                必须指出，当为1时会考虑路况，故在不同时间请求返回结果可能不同。
     *                此策略和驾车路径规划接口的 strategy=4策略基本一致，策略为“ 躲避拥堵的路线，但是可能会存在绕路的情况，耗时可能较长 ”
     *                若需要实现高德地图客户端效果，可以考虑使用驾车路径规划接口
     *             2：公交规划距离（仅支持同城坐标,QPS不可超过1，否则可能导致意外）
     *             3：步行规划距离（仅支持5km之间的距离）
     * @return 距离
     */
    public static int getDistance(String origins,String destination,int type){
        String param = "origins="+origins+"&destination="+destination+"&type="+type+"&output=json&key="+MyConst.MAP_WEB_KEY;
        String resultJson = HttpRequestUtil.sendGet(MyConst.DISTANCE_URL, param);
        JSONObject jsonObject = new JSONObject(resultJson);
        JSONArray results = jsonObject.getJSONArray("results");
        return results.getJSONObject(0).getInt("distance");
    }

}
