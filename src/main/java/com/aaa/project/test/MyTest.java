package com.aaa.project.test;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.lang.UUID;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.NumberUtil;
import com.aaa.common.utils.Distance;
import com.aaa.common.utils.IDUtil;
import com.aaa.common.utils.ReGeo;
import org.junit.Test;

import java.util.*;

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

    @Test
    public void getOrderNoByUUID() {
        String id = IDUtil.createID();
        System.out.println(id);
        id = IDUtil.createID();
        System.out.println(id);

    }
}
