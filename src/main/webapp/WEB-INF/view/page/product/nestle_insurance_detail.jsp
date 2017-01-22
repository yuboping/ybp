<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>安居综合保险条款C-保障</title>
<%@include file="../../common/head.jsp"%>
</head>
<body onload="loaded();">
  <div id="baoqiandai_content">
		<!-- <div data-role="header" data-position="fixed" class="zll_header" data-tap-toggle="false">
			onclick="$.mobile.changePage('insurance_detail.html', 'slideup');"
		    <a data-ajax="false" href="javascript:history.go(-1);"  class="ui-btn ui-corner-all ui-btn-icon-notext ui-icon-back">返回</a>
		    <h2>安居综合保险条款C</h2>
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
            <div class="header-tit"><h2>安居综合保险条款C</h2></div>
            <div class="header-right">
              
            </div>
        </header>
		<!--内容页-->
		<div id="wrapper" >
          <div id="scroller">
            <main class="ui-content insurance_detail">
			 <h2>产品介绍</h2>
			 <br />
             <p>安居C家庭财产保障+第三者责任的保障方式构成，承保房屋、装潢和室内财产以及致使第三者人身伤亡或财产损失而应承担的经济赔偿，为您的家提供全面的保障。</p>
			 <br />
			 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
			 	<tr align="center">
			 		<td>保障</td>
				 	<td>保额</td>
				 	<td>总保费</td>
				 	<td>适用条款</td>
			 	</tr>
			 	<tr align="center">
			 		<td>家庭财产</td>
			 		<td>7000元</td>
			 		<td rowspan="2">13元</td>
			 		<td rowspan="2">安居综合保险条款C</td>
			 	</tr>
			 	<tr align="center">
			 		<td >第三者经济责任</td>
			 		<td>3000元</td>
			 	</tr>
			 	<tr align="center">
			 		<td colspan="4">备注：本保单每个家庭（地址）至多购买100份</td>
			 	</tr>
			 	
			 </table>
		    </main>
		</div>
    </div>
		  
		 
	</div>
</body>
</html>