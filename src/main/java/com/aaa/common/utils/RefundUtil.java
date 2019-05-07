package com.aaa.common.utils;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import com.alibaba.fastjson.JSONObject;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import javax.net.ssl.SSLContext;
import javax.servlet.http.HttpServletRequest;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.security.KeyStore;
import java.util.*;
import org.apache.http.ssl.SSLContexts;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static com.aaa.common.utils.PayUtil.createLinkString;
import static com.aaa.project.myconst.WXConst.*;

public class RefundUtil {

    private static Logger log = LoggerFactory.getLogger(RefundUtil.class);

    public static JSONObject refund(HttpServletRequest request){
        //设置最终返回对象
        JSONObject resultJson = new JSONObject();
        //接受参数(金额)
        //String amount = request.getParameter("amount");
        //接受参数(订单Id)
        String orderId = request.getParameter("orderId");
        //接受参数(商品ID)
        //String productId = request.getParameter("productId");
        //接受参数(商品sku)
        //String sku = request.getParameter("sku");
        //接受参数(商品name)
        //String name = request.getParameter("name");
        //接受参数(商品订单号)
        //String incrementId = request.getParameter("incrementId");

        //创建hashmap(用户获得签名)
        SortedMap<String, String> paraMap = new TreeMap<String, String>();
        //设置随机字符串
        String nonceStr = IdUtil.simpleUUID();
        //设置商户退款单号
        String orderIncrementId = IdUtil.simpleUUID();

        //设置请求参数(小程序ID)
        paraMap.put("appid", APPID);
        //设置请求参数(商户号)
        paraMap.put("mch_id", MCH_ID);
        //设置请求参数(随机字符串)
        paraMap.put("nonce_str", nonceStr);
        //设置请求参数(商户订单号)
        paraMap.put("out_trade_no", orderId);
        //设置请求参数(商户退款单号)
        paraMap.put("out_refund_no", orderIncrementId);
        //设置请求参数(订单金额)
        paraMap.put("total_fee", "1");
        //设置请求参数(退款金额)
        paraMap.put("refund_fee", "1");
        paraMap.put("refund_account","REFUND_SOURCE_RECHARGE_FUNDS");
        //TODO (这个回调地址 没有具体进行测试 需要写好逻辑 打版在测试)设置请求参数(通知地址)
        //paraMap.put("notify_url", "");
        //调用逻辑传入参数按照字段名的 ASCII 码从小到大排序（字典序）
        String stringA = createLinkString(paraMap);
        //第二步，在stringA最后拼接上key得到stringSignTemp字符串，并对stringSignTemp进行MD5运算，再将得到的字符串所有字符转换为大写，得到sign值signValue。(签名)
        String sign = PayUtil.sign(stringA,KEY,"utf-8").toUpperCase();
        System.out.println(sign);
        //将参数 编写XML格式
        StringBuffer paramBuffer = new StringBuffer();
        paramBuffer.append("<xml>");
        paramBuffer.append("<appid>"+APPID+"</appid>");
        paramBuffer.append("<mch_id>"+MCH_ID+"</mch_id>");
        paramBuffer.append("<nonce_str>"+paraMap.get("nonce_str")+"</nonce_str>");
        paramBuffer.append("<out_refund_no>"+paraMap.get("out_refund_no")+"</out_refund_no>");
        paramBuffer.append("<out_trade_no>"+paraMap.get("out_trade_no")+"</out_trade_no>");
        paramBuffer.append("<refund_fee>"+paraMap.get("refund_fee")+"</refund_fee>");
        paramBuffer.append("<total_fee>"+paraMap.get("total_fee")+"</total_fee>");
        paramBuffer.append("<refund_account>"+paraMap.get("refund_account")+"</refund_account>");
        paramBuffer.append("<sign>"+sign+"</sign>");

        //paramBuffer.append("<notify_url>"+paraMap.get("notify_url")+"</notify_url>");
        paramBuffer.append("</xml>");
        System.out.println(paramBuffer);
        try {
            //发送请求(POST)(获得数据包ID)(这有个注意的地方 如果不转码成ISO8859-1则会告诉你body不是UTF8编码 就算你改成UTF8编码也一样不好使 所以修改成ISO8859-1)
            Map<String,String> map = WxUtil.doXMLParse(doRefund(request,REFUND_URL, new String(paramBuffer.toString().getBytes(), "ISO8859-1")));
            //应该创建 退款表数据
            if(map!=null && (StringUtils.isNotBlank(map.get("return_code")) && "SUCCESS".equals(map.get("return_code")))){
                if(StringUtils.isBlank(map.get("err_code_des"))) {
                    //接口调用成功 执行操作逻辑 返回成功状态码给前台
                    System.out.println("***********");
                    resultJson.put("returnCode", "success");
                    return resultJson;
                }else {
                    resultJson.put("returnCode", "error");
                    resultJson.put("err_code_des", map.get("err_code_des"));
                }
            }else {
                resultJson.put("returnCode", map.get("return_code"));
                resultJson.put("err_code_des", map.get("err_code_des"));
            }
        } catch (
                UnsupportedEncodingException e) {
            log.info("微信 退款 异常："+e.getMessage());
            e.printStackTrace();
        } catch (Exception e) {
            log.info("微信 退款 异常："+e.getMessage());
            e.printStackTrace();
        }
        log.info("微信 退款 失败");
        return resultJson;
    }

    private static String doRefund(HttpServletRequest request, String url, String data) throws Exception{
        /**
         * 注意PKCS12证书 是从微信商户平台-》账户设置-》 API安全 中下载的
         */

        KeyStore keyStore  = KeyStore.getInstance("PKCS12");
        //String substring = request.getSession().getServletContext().getRealPath("/").substring(0, request.getSession().getServletContext().getRealPath("/").lastIndexOf("webapp\\"));
        FileInputStream instream = new FileInputStream("/Users/roy/cert/1532192611_20190507_cert/apiclient_cert.p12");//P12文件目录 证书路径
        try {
            /**
             * 此处要改
             * */
            keyStore.load(instream, MCH_ID.toCharArray());//这里写密码..默认是你的MCHID
        } finally {
            instream.close();
        }

        // Trust own CA and all self-signed certs
        /**
         * 此处要改
         * */
        SSLContext sslcontext = SSLContexts.custom()
                .loadKeyMaterial(keyStore, MCH_ID.toCharArray())//这里也是写密码的
                .build();
        // Allow TLSv1 protocol only
        SSLConnectionSocketFactory sslsf = new SSLConnectionSocketFactory(
                sslcontext,
                new String[] { "TLSv1" },
                null,
                SSLConnectionSocketFactory.BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
        CloseableHttpClient httpclient = HttpClients.custom()
                .setSSLSocketFactory(sslsf)
                .build();
        try {
            HttpPost httpost = new HttpPost(url); // 设置响应头信息
            httpost.addHeader("Connection", "keep-alive");
            httpost.addHeader("Accept", "*/*");
            httpost.addHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
            httpost.addHeader("Host", "api.mch.weixin.qq.com");
            httpost.addHeader("X-Requested-With", "XMLHttpRequest");
            httpost.addHeader("Cache-Control", "max-age=0");
            httpost.addHeader("User-Agent", "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0) ");
            httpost.setEntity(new StringEntity(data, "UTF-8"));
            CloseableHttpResponse response = httpclient.execute(httpost);
            try {
                HttpEntity entity = response.getEntity();

                String jsonStr = EntityUtils.toString(response.getEntity(), "UTF-8");
                EntityUtils.consume(entity);
                System.out.println("result**********  "+jsonStr);
                return jsonStr;
            } finally {
                response.close();
            }
        } finally {
            httpclient.close();
        }
    }
}
