package com.aaa.common.utils;

import com.aaa.project.myconst.MyConst;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.LinkedList;
import java.util.List;

public class Distance {


    /**
     * 求出某坐标到多坐标点的距离
     * @param posList 目标点列表 字符串格式 ，分隔 例：131.568456,34.854621
     * @param location
     * @return
     */
    public static List<Integer> getDistanceList(LinkedList<String> posList,String location){
        List<Integer> distanceList = new LinkedList<>();

        String posStr = "";

        for(String current : posList){
            if(!"".equals(posStr)){
                posStr+="|";
            }
            posStr+=current;
        }

        String param = "origins="+posStr+"&destination="+location+"&type=1&output=json&key="+ MyConst.MAP_WEB_KEY;

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
     * 计算两点(经纬度)之间的直线距离
     * @param origins 起点
     * @param destination 终点
     * @return 两点间的直线距离
     */
    public static int getDistance(String origins,String destination){
        String param = "origins="+origins+"&destination="+destination+"&type=1&output=json&key="+MyConst.MAP_WEB_KEY;
        String resultJson = HttpRequestUtil.sendGet(MyConst.DISTANCE_URL, param);
        JSONObject jsonObject = new JSONObject(resultJson);
        JSONArray results = jsonObject.getJSONArray("results");
        return results.getJSONObject(0).getInt("distance");
    }

}
