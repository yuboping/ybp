package com.xirui.util.cipher;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.fastjson.JSONObject;
import com.xirui.util.common.HttpUtils;
import com.xirui.util.config.Contants;

/**
 * 
 * @Description:大小财神操作接口类
 * @author: ling
 * @date: 2016年1月20日
 *
 */
public class Dcs implements POS {
	
	private static final Logger logger = LoggerFactory.getLogger(Dcs.class);

	/**
	 * 大小财神扣余额
	 */
	@Override
	public Rst payApply(String agentNo, String billNo, double money, String operator, String remark) {
		// 线上环境
		// String BUY_APPLY_URI="http://111.111.111.111:8080/apy";
		JSONObject jo = new JSONObject();
		jo.put("agentno", agentNo);
		jo.put("orderid", billNo);
		jo.put("money", String.valueOf(money));
		jo.put("operator", operator);
		jo.put("remark", remark);
		return req(Contants.BUY_APPLY_URI, jo);
	}

	/**
	 * 确认扣款
	 */
	@Override
	public Rst confirmPayApply(String agentNo, String billNo, boolean yn, String msg) {
		/*
		 * String result = "-1"; if (yn) result = "1";
		 */
		String result = yn ? "1" : "-1";
		// 线上数据
		JSONObject jo = new JSONObject();
		jo.put("agentno", agentNo);
		jo.put("orderid", billNo);
		jo.put("flag", result);
		jo.put("flagdesc", msg);
		return req(Contants.BUY_RESULT_URI, jo);
	}

	@Override
	public double getBalance(String agentNo) {
		try {
			return Double.parseDouble(getInfo(agentNo).getBalance());
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Rst getInfo(String agentNo) {
		JSONObject jo = new JSONObject();
		jo.put("agentno", agentNo);
		return req(Contants.QUERY_URI, jo);
	}

	public String getInfo2(String agentNo) {
		JSONObject jo = new JSONObject();
		jo.put("busiNum", agentNo);
		addSign(jo);
		String params = jo.toJSONString();
		String rst = HttpUtils.post(Contants.INFO_URI, params, "UTF-8");
		return rst;
	}

	/**
	 * 增加财富值
	 */
	public Rst addPoint(String agentNo, String billNo, double amount, String message, String operator, String remark) {
		JSONObject jo = new JSONObject();
		jo.put("agentno", agentNo);
		jo.put("point", String.valueOf(amount));
		jo.put("orderid", billNo);
		jo.put("point_showmsg", message);
		jo.put("operator", operator);
		jo.put("remark", remark);
		return req(Contants.POINT_URI, jo);
	}

	private void addSign(JSONObject jo) {
		jo.remove("sign");
		String sort = StringFormat.sortString(jo);
		String sign = Rsa.sign(sort, Contants.PRIVATE_KEY_RSA);
		jo.put("sign", sign);
	}

	/**
	 * 大财神发送接收请求
	 * 
	 * @param uri
	 * @param jo
	 * @return
	 */
	private Rst req(String uri, JSONObject jo) {
		addSign(jo);// 加签
		String params = jo.toJSONString();
		String rst = HttpUtils.post(uri, params, "UTF-8");
		if (rst != null && rst.equals("")) {// 一般是网络异常，超时
			Rst rrst = new Rst();
			rrst.setRet("-1");
			rrst.setRetmsg("大财神接口调用异常");
			return rrst;
		} else {
			Rst rrst;
			try {
				rrst = JSONObject.parseObject(rst, Rst.class);
			} catch (Exception e) {
				rrst = new Rst();
				rrst.setRet("-1");
				rrst.setRetmsg("大财神返回数据解析异常");
				logger.error("Dcs class req method 加载异常："+e);
			}
			return rrst;
		}
	}

}
