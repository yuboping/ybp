package com.xirui.util.cipher;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

import com.alibaba.fastjson.JSONObject;

public class StringFormat
{

    /**
     * 将JSONObject转换成以key升序排序以&作为连字符的字符串
     * 
     * @param JSONObject
     *            jo
     * @return key1=value1&key2=value2
     */
    public static String sortString(JSONObject jo)
    {
        StringBuffer sortStr = new StringBuffer();
        ArrayList<String> list = new ArrayList<String>(jo.keySet());
        Collections.sort(list);
        Iterator<String> iterator = list.iterator();
        while (iterator.hasNext())
        {
            String key = iterator.next();
            String value = jo.getString(key);
            if (null == value || value.equals(""))
            {
                continue;
            }
            sortStr.append(key + "=" + value + "&");
        }
        if (sortStr.length() > 0)
        {
            sortStr.deleteCharAt(sortStr.length() - 1);
        }
        return sortStr.toString();
    }

    /**
     * http_build_query java版
     * 
     * @param jo
     * @return
     */
    public static String toQueryString(JSONObject jo)
    {
        StringBuffer queryString = new StringBuffer();
        Set<String> keySet = jo.keySet();
        for (String key : keySet)
        {
            try
            {
                String value = jo.getString(key);
                if (null == value)
                    value = "";
                queryString.append(URLEncoder.encode(key, "UTF-8") + "=");
                queryString.append(URLEncoder.encode(value, "UTF-8") + "&");
            }
            catch(UnsupportedEncodingException e)
            {
                e.printStackTrace();
            }
        }
        if (queryString.length() > 0)
        {
            queryString.deleteCharAt(queryString.length() - 1);
        }
        return queryString.toString();
    }

    /**
     * 将 queryString转换成JSONObject对象
     * 
     * @param queryString
     * @return
     */
    public static JSONObject queryStringDecode(String queryString)
    {
        JSONObject jo = new JSONObject();
        try
        {
            String[] ss = queryString.split("&");
            for (int i = 0; i < ss.length; i++)
            {
                String[] kv = ss[i].split("=");
                String key = kv[0];
                String value = kv[1];
                key = URLDecoder.decode(key, "UTF-8");
                value = URLDecoder.decode(value, "UTF-8");
                jo.put(key, value);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return jo;
    }

    /**
     * 
     * @param in
     * @return
     */
    public static String null2Empty(String in)
    {
        if (null == in)
            return "";
        else
            return in;
    }

    /**
     * 字符串是否非空
     *
     * @Title: isNull
     * @Description: TODO(这里用一句话描述这个方法的作用)
     * @param @param anyString
     * @param @return 是否为空
     * @return boolean true,字符串非空 false,字符串是空的
     * @throws
     */
    public static boolean isNotNull(String anyString)
    {
        if (null == anyString)
        {
            return false;
        }
        else
        {
            if ("".equals(anyString.trim()))
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}
