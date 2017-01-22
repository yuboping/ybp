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
          <h2>保单查询</h2>
      </div> -->
      <header>
          <div class="header-left" onclick="history.go(-1);">
            <div class="header-btn-area">
                <!-- <i class="iconfont icon-fanhuijiantou"></i> --> 
                <%-- <img src="${staticPath }/img/icon/left.png" width="15px" alt="" height="15px"/> --%>
                <!-- <span class="left-btn"></span> -->
                <!-- <div class="header-btn-area"> -->
                <span class="icon_img back"></span>
            </div>
          </div>
          <div class="header-tit"><h2>保单查询</h2></div>
          <div class="header-right">
            
          </div>
      </header>
      <!--内容页-->
      <div id="wrapper" >
          <div id="scroller">
      <main class="ui-content bgcffffff">
         <!-- <h2>免责声明：</h2> -->
         <br>   
         <div class="service_desc">
            <p class="fwb">1.太平洋保险</p>
            <p class="textindet10">(1).请登录太平洋官网（http://www.ecpic.com.cn/）；</p>
            <p class="textindet10">(2).点击太平洋官网的保单查询后，输入个人信息即可查询到个人相关保单；</p>
         </div>
         <br>  
         <div class="service_desc">
            <p class="fwb">2.中国人民保险官网</p>
            <p class=" textindet10">(1).请登录中国人民保险官网（http://www.epicc.com.cn/）；</p>
            <p class=" textindet10">(2).点击中国人民保险官网的保单查询后，输入保单号和个人信息即可查询到个人相关保单；</p>
         </div>   
         
       </main>
       </div>
       </div>
       <script type="text/javascript">
       		$("main").css("height",  window.screen.height - 54 + "px");
       </script>  
        
       
    </div>
</body>
</html>