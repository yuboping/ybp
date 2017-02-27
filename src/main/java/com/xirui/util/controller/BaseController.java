package com.xirui.util.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * 
 * <p>Title:BaseController</p>
 * <p>Description:控制器基类</p>
 * <p>Company:北京钱袋宝公司南京分公司</p>
 * @author wanghaitao01@new4g.cn
 * @date 2016年5月10日下午3:00:53
 */
public class BaseController {
	
	private static final Logger logger = LoggerFactory.getLogger(BaseController.class);

	
	public Map<String,Object> getParams(HttpServletRequest request) {
		Map<String, String[]> reqMap = request.getParameterMap();
        Map<String, Object> resultMap = new HashMap<String, Object>(0);
        resultMap.putAll(getIpAddr(request));
        for (Entry<String, String[]> m : reqMap.entrySet()) {
            String key = m.getKey();
            Object[] obj = (Object[]) reqMap.get(key);
            resultMap.put(key, (obj.length > 1) ? obj : obj[0]);
        }
        return resultMap;
	}

	public Map<String, Object> iPLocal() {
		Map<String, Object> params = new HashMap<String, Object>();
		InetAddress ia;
		try {
			ia = InetAddress.getLocalHost();
			params.put("localIp", ia.getHostAddress());
			params.put("ipN", ia.getLocalHost());
		} catch (UnknownHostException e) {
			e.printStackTrace();
//			logger.error("ip error:" + e.getMessage());
		}
		return params;
	} 
	
    public Map<String, Object> getIpAddr(HttpServletRequest request) { 
    	Map<String, Object> params = new HashMap<String, Object>();
        String ip = request.getHeader("x-forwarded-for"); 
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("Proxy-Client-IP"); 
        } 
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getHeader("WL-Proxy-Client-IP"); 
        } 
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
            ip = request.getRemoteAddr(); 
        } 
        params.put("ip", ip);
        return params; 
    } 
	
}
