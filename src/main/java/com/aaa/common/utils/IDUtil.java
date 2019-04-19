package com.aaa.common.utils;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.util.NumberUtil;

import java.util.Date;

public class IDUtil {
    /**
     * 获取id
     * @return id
     */
    public static String createID(){
        int[] ints = NumberUtil.generateRandomNumber(1000, 9999, 2);
        DateTime dateTime = DateTime.of(new Date());
        String timeStr = String.valueOf(dateTime.getTime()).substring(5, 10);

        return ints[0]+timeStr+ints[1];
    }
}
