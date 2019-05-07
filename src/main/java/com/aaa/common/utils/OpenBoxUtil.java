package com.aaa.common.utils;

import com.aaa.common.utils.http.HttpUtils;
import com.aaa.project.system.containerBox.domain.ContainerBox;

public class OpenBoxUtil {

    private static final String host = "192.168.1.47:8080/container";

    private static final String url="/api/openContainer";

    public static void openBox(ContainerBox containerBox){
        String param = "container="+containerBox.getContainerNum()+"&box="+containerBox.getBoxNum()+"&code="+containerBox.getCode();
        HttpUtils.sendGet("http://"+host+url,param);
    }
}
