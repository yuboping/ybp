package com.xirui.util.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * <p>
 * Title:HttpUtils
 * </p>
 * <p>
 * Description:民生接口请求工具类
 * </p>
 * <p>
 * Company:北京钱袋宝公司南京分公司
 * </p>
 * 
 * @author wanghaitao01@new4g.cn
 * @date 2016年3月17日下午2:08:07
 */
public class HttpUtils {

	private static final Logger logger = LoggerFactory.getLogger(HttpUtils.class);
	
	public static String post(String url, String content, String charset) {
		String rsp = "";
		HttpURLConnection conn = null;
		OutputStreamWriter writer = null;
		BufferedReader reader = null;
		try {
			logger.info("post 请求信息:url={},params={}", url, content);
			URL u = new URL(url);
			if (url.toLowerCase().startsWith("https://")) {
				// setHttpsConnection();
			}
			long startTime = System.nanoTime();
			conn = (HttpURLConnection) u.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", String.valueOf(content.length()));
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			conn.setRequestProperty("Connection", "close");
			conn.setConnectTimeout(30000);
			conn.setDoOutput(true);
			conn.setDoInput(true);
			writer = new OutputStreamWriter(conn.getOutputStream(), charset);
			writer.write(content);
			writer.flush();
			int code = conn.getResponseCode();
			if (code != HttpURLConnection.HTTP_OK) {

			}
			reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), charset));
			StringBuffer sb = new StringBuffer();
			String temp;
			while ((temp = reader.readLine()) != null) {
				sb.append(temp).append('\n');
			}
			rsp = sb.toString();
			long endTime = System.nanoTime();
			logger.debug("post请求耗时：" + (endTime - startTime) + "ns");
			logger.info("post 返回信息：url={},rsp={}", url, rsp);

		} catch (Exception e) {
			logger.error("post调用远程接口异常：url={},e={}", url, e);
			rsp = "";
		} finally {
			if (null != writer) {
				try {
					writer.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			if (null != reader) {
				try {
					reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			if (null != conn) {
				conn.disconnect();
			}
			
		}
		return rsp;
	}
	
	/**
	 * 
	 * <p>Description:HTTP请求类</p>
	 * @author wanghaitao01@new4g.cn
	 * @date 2016年3月17日下午3:55:05
	 * @param url 请求的URL
	 * @param params 传入的参数
	 * @return 密文字符串
	 */
	public static String post(String url, Map<String, String> params,String encode) {
		CloseableHttpClient httpClient = getHttpClient();
		CloseableHttpResponse httpResponse = null;
		BufferedReader in = null;
		StringBuffer result = new StringBuffer("");
		try {
			HttpPost post = new HttpPost(url);
			List<NameValuePair> list = new ArrayList<NameValuePair>();
			for (String key : params.keySet()) {
				list.add(new BasicNameValuePair(key, (String) params.get(key)));
			}
			// url格式编码
			UrlEncodedFormEntity uefEntity = new UrlEncodedFormEntity(list, encode);
			post.setEntity(uefEntity);
			// 执行请求
			httpResponse = httpClient.execute(post);
			HttpEntity entity = httpResponse.getEntity();
			in = new BufferedReader(new InputStreamReader(entity.getContent(),encode));
			String line="";			
			while ((line=in.readLine())!=null) {
				result.append(line);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("HTTP request failed:" + e.getMessage());
		} finally {
			if (null != httpResponse) {
				try {
					httpResponse.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			try {
				closeHttpClient(httpClient);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return result.toString();
	}

	private static CloseableHttpClient getHttpClient() {
		return HttpClients.createDefault();
	}

	private static void closeHttpClient(CloseableHttpClient client) throws IOException {
		if (client != null) {
			client.close();
		}
	}
	

	
	 
}
