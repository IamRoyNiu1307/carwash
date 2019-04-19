package com.aaa.project.test;

import cn.hutool.core.util.IdUtil;
import com.aaa.common.utils.Distance;
import com.aaa.common.utils.ReGeo;
import com.aaa.project.system.api.ApiKeyController;
import com.aaa.project.system.keyContainer.domain.KeyContainer;
import com.aaa.project.system.keyContainer.service.KeyContainerServiceImpl;
import org.junit.Test;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class MyTest {
    @Test
    public void test1() {
        Map map = ReGeo.reGeo("119.481488", "39.990464");
        System.out.println(map);
    }

    @Test
    public void test2() {
        List<String> objects = new ArrayList<>();
        objects.add("116.481488,39.990464");
        objects.add("117.481488,39.990464");
        objects.add("118.481488,39.990464");
        objects.add("123.481488,39.990464");
        objects.add("119.481488,39.990464");
        objects.add("121.481488,39.990464");
        objects.add("122.481488,39.990464");

        List<Integer> distanceList = Distance.getDistanceList(objects, "116.481488,39.990464",1);
        System.out.println(distanceList);
    }

    @Test
    public void testUUID(){
        System.out.println(IdUtil.simpleUUID());
    }

    @Test
    public void testList(){
        List a = new ArrayList();
        a.add(1);
        a.add(5);
        a.add(2);
        a.add(6);
        a.add(4);
        System.out.println(a);
    }
}