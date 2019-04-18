package com.aaa.project.test;

import com.aaa.common.utils.Distance;
import com.aaa.common.utils.ReGeo;
import com.aaa.project.system.api.ApiKeyController;
import com.aaa.project.system.keyContainer.domain.KeyContainer;
import com.aaa.project.system.keyContainer.service.KeyContainerServiceImpl;
import org.junit.Test;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class MyTest {
    @Test
    public void test1() {
        KeyContainerServiceImpl keyContainerService = new KeyContainerServiceImpl();
        keyContainerService.getAroundContainer("116.481488", "39.990464");
    }

    @Test
    public void test2() {
        LinkedList<String> objects = new LinkedList<>();
        objects.add("116.481488,39.990464");
        objects.add("117.481488,39.990464");
        objects.add("118.481488,39.990464");
        objects.add("119.481488,39.990464");
        objects.add("120.481488,39.990464");
        objects.add("121.481488,39.990464");
        objects.add("122.481488,39.990464");

        List<Integer> distanceList = Distance.getDistanceList(objects, "116.481488,39.990464");
        System.out.println(distanceList);
    }
}
