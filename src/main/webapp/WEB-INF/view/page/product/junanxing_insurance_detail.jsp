<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>君安行-保障</title>
<%@include file="../../common/head.jsp"%>
</head>
<body onload="loaded();">
  <div id="baoqiandai_content">
	<!-- <div data-role="header" data-position="fixed" class="zll_header" data-tap-toggle="false">
		onclick="$.mobile.changePage('insurance_detail.html', 'slideup');"
	    <a data-ajax="false" href="javascript:history.go(-1);"  class="ui-btn ui-corner-all ui-btn-icon-notext ui-icon-back">返回</a>
	    <h2>君安行</h2>
	</div> -->
    <header>
        <div class="header-left" onclick="history.go(-1);">
          	<div class="header-btn-area">
                <!-- <i class="iconfont icon-fanhuijiantou"></i> --> 
                <%-- <img src="${staticPath }/img/icon/left.png" width="15px" alt="" height="15px"/> --%>
                <!-- <span class="left-btn"></span> -->
                <span class="icon_img back"></span>
            </div>
        </div>
        <div class="header-tit"><h2>君安行</h2></div>
        <div class="header-right">
          
        </div>
    </header>
	<!--内容页-->
	<div id="wrapper" >
       <div id="scroller">
      <main class="ui-content insurance_detail">
		 <h2>产品介绍</h2>
		 <br />
         <p>搭乘各类交通工具皆有保障，一次购买全年无忧。</p>
		 <br />
		 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
		 	<tr align="center">
		 		<td>保障</td>
			 	<td>保额</td>
			 	<td>总保费</td>
			 	<td>适用条款</td>
			 	<td>险种代码</td>
		 	</tr>
		 	<tr align="center">
		 		<td>乘坐客运民航班机</td>
		 		<td>80万元</td>
		 		<td rowspan="5">70元</td>
		 		<td rowspan="5">君安行人身意外伤害保险（2013版）条款</td>
		 		<td rowspan="5">23C39800</td>
		 	</tr>
		 	<tr align="center">
		 		<td>乘坐非营运机动车</td>
		 		<td>6万元</td>
		 	</tr>
		 	<tr align="center">
		 		<td>乘坐客运机动车</td>
		 		<td>6万元</td>
		 	</tr>
		 	<tr align="center">
		 		<td>乘坐客运轨道交通车辆</td>
		 		<td>40万元</td>
		 	</tr>
		 	<tr align="center">
		 		<td>乘坐客运轮船</td>
		 		<td>40万元</td>
		 	</tr>
		 </table>
	    </main>
      </div>
	</div>
	  
	 
</div>
</body>
</html>