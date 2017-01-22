<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>儿童预防接种健康保险-保障</title>
<%@include file="../../common/head.jsp"%>
</head>
<body onload="loaded();">
  <div id="baoqiandai_content">
      <!-- <div data-role="header" data-position="fixed" class="zll_header" data-tap-toggle="false">
        onclick="$.mobile.changePage('insurance_detail.html', 'slideup');"
          <a data-ajax="false" href="javascript:history.go(-1);"  class="ui-btn ui-corner-all ui-btn-icon-notext ui-icon-back">返回</a>
          <h2>儿童预防接种健康保险</h2>
      </div> -->
      <header>
        <div class="header-left" onclick="history.go(-1);">
            <div class="header-btn-area">
                <!-- <i class="iconfont icon-fanhuijiantou"></i> -->
                <%-- <img src="${staticPath }/img/icon/left.png" width="15px" alt="" height="15px"/>  --%>
                <!-- <span class="left-btn"></span> -->
                <span class="icon_img back"></span>
            </div>
        </div>
        <div class="header-tit"><h2>儿童预防接种健康保险</h2></div>
        <div class="header-right">
          
        </div>
      </header>
      
      <!--内容页-->
      <div id="wrapper" >
       <div id="scroller">
        <main class="ui-content insurance_detail">
         <h2>产品介绍</h2>
         <br />
         <p>专为婴幼儿、青少年接受预防接种时造成的意外，或在该疫苗防疫有效期内仍罹患该疫苗所防疾病，并在保险期间内以此为直接原因造成的疾病身故、医疗费用等设计的意外伤害保险计划。</p>
         <br />
         <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
          <tr align="center">
            <td>保险责任</td>
            <td>尊贵款</td>
            <td>标准款</td>
          </tr>
          <tr align="center">
            <td>儿童预防接种意外伤害</td>
            <td rowspan="2">100000</td>
            <td rowspan="2">60000</td>
          </tr>
          <tr align="center">
            <td>罹患该疫苗所防疫疾病疾病身故</td>
          </tr>
          <tr align="center">
            <td>医疗费用</td>
            <td>10000</td>
            <td>6000</td>
          </tr>
          <tr align="center">
            <td>保费</td>
            <td>31元</td>
            <td>19元</td>
          </tr>
          <tr align="center">
            <td>保险期间</td>
            <td colspan="2">一年</td>
          </tr>
          <tr align="left">
            <td colspan="3" style="padding:5px 10px;">
              <p>1、附件儿童预防接种健康保险医疗费用扣除100元人民币绝对免赔后责任范围内的80%赔付；</p>
              <p>2、客户出险后，需在24小时之内报案；</p>
              <p>投保人就同一被保险人限购一款产品，且标准款限购三份，尊贵款限购两份，多投无效，出现后保险人仅按照约定的最高投保份数承担保险责任。</p>
            </td>
          </tr>
         </table>
        </main>
        </div>
        
      </div>
        
       
    </div>
</body>
</html>