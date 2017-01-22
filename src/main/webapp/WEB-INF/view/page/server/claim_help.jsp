<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保钱袋服务协议</title>
<%@include file="../../common/head.jsp"%>
</head>
<body onload="loaded();">
  <div id="">
      <!-- <div data-role="header" data-position="fixed" class="zll_header" data-tap-toggle="false">
          <a data-ajax="false" href="javascript:history.go(-1);"  class="ui-btn ui-corner-all ui-btn-icon-notext ui-icon-back">返回</a>
          <h2>理赔求助</h2>
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
          <div class="header-tit"><h2>理赔求助</h2></div>
          <div class="header-right">
            
          </div>
      </header>
      <!--内容页-->
      <div id="wrapper" >
          <div id="scroller">
       <main class="bgcffffff ui-content">
         <br>   
         <div class="service_desc">
            <p class="fwb">1.太平洋保险</p>
            <p class=" textindet10"> (1) 太平洋保险理赔热线：</p>
            <p class=" textindet20">财险理赔热线：<a onclick="call('95500');" class="tel_a">95500-3-2</a></p>
            <!-- <p class="font888888 textindet20">寿险理赔热线：<a onclick="call('95500');" class="tel_a">95500-2-9</a></p> -->
            <p class=" textindet10">(2) 太平洋保险理赔进度查询：</p>
            <p class=" textindet20"> a. 请登录太平洋保险官网 </p>
            <p class=" textindet20">(http://www.cpic.com.cn/) </p>
            <p class=" textindet20">b. 点击太平洋保险官网的理赔查询后，输入个人信息即      可查询到保单理赔进度</p>
         </div>
         <br>   
         <div class="service_desc">
            <p class="fwb">2.中国人民保险官网</p>
            <p class=" textindet10"> (1) 中国人民保险理赔热线：<a onclick="call('95518');" class="tel_a">95518</a></p>
            <p class=" textindet10"> (2) 中国人民保险理赔进度查询：</p>
            <p class=" textindet20"> a. 请登录中国人民保险官网</p>
            <p class=" textindet20">( http://www.epicc.com.cn/)
            <p class=" textindet20">  b. 点击中国人民保险官网的理赔进度查询后，输入保单号和个人信息即可查询到保单理赔进度</p>
         </div>
         <br>  
       </main>
       </div>
       </div>
       <script type="text/javascript">
          $("main").css("height",  window.screen.height - 54 + "px");
       </script>  
       
    </div>
</body>
</html>