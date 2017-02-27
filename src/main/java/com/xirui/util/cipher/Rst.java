package com.xirui.util.cipher;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

public class Rst
{
    private String ret;// 返回码

    private String retmsg;// 返回信息

    private String time;// 执行时间

    private String balance;// 余额

    private String s_dealers_no;// 设备经销商编号

    private String s_dealers_name;// 经销名称

    private String dealers_no;// 升级码经销商编号

    private String dealers_name;// 升级码经销商名称

    public boolean isOk()
    {
        return "1".equals(ret);
    }

    public String getRet()
    {
        return ret;
    }

    public void setRet(String ret)
    {
        this.ret = ret;
    }

    public String getRetmsg()
    {
        if (retmsg == null)
            return "";
        return retmsg;
    }

    public void setRetmsg(String retmsg)
    {
        this.retmsg = retmsg;
    }

    public String getTime()
    {
        return time;
    }

    public void setTime(String time)
    {
        this.time = time;
    }

    public String getBalance()
    {
        return balance;
    }

    public void setBalance(String balance)
    {
        this.balance = balance;
    }

    public String getS_dealers_no()
    {
        return s_dealers_no;
    }

    public void setS_dealers_no(String s_dealers_no)
    {
        this.s_dealers_no = s_dealers_no;
    }

    public String getS_dealers_name()
    {
        return s_dealers_name;
    }

    public void setS_dealers_name(String s_dealers_name)
    {
        this.s_dealers_name = s_dealers_name;
    }

    public String getDealers_no()
    {
        return dealers_no;
    }

    public void setDealers_no(String dealers_no)
    {
        this.dealers_no = dealers_no;
    }

    public String getDealers_name()
    {
        return dealers_name;
    }

    public void setDealers_name(String dealers_name)
    {
        this.dealers_name = dealers_name;
    }
    
    public String toLocalString() {
        StringBuffer returnStr = new StringBuffer("[");
        try {
            Field[] fields = this.getClass().getDeclaredFields();
            AccessibleObject.setAccessible(fields, true);
            for (int i = 0; i < fields.length; i++) {
                returnStr.append(fields[i].getName() + "=" + fields[i].get(this) + "|");
            }
        } catch (Exception e) {
            e.printStackTrace();
            returnStr.append(e.getMessage());
        }
        return returnStr.append("]").toString();
    }
}
