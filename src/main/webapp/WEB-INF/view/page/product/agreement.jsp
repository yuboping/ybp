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
          <h2>保钱袋免责申明</h2>
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
            <div class="header-tit"><h2>保钱袋免责申明</h2></div>
            <div class="header-right">
              
            </div>
       </header>
      <!--内容页-->
      <div id="wrapper" >
       <div id="scroller">
        <main class="bgcffffff ui-content  disclaimer">
         <h2>免责声明：</h2>
         <br>      
         <p>
                                            北京钱袋网信息技术有限公司、旗下保钱袋产品以及相关业务APP（以下简称钱袋网）仅向保险公司及投保人提供利于达成保险协议的技术服务平台与推广服务。
         </p>
         <br>
         <p>
                                               钱袋网并非为保险协议的参与制定方，因此不对保险协议的协议方以任何口头、书面陈述、向钱袋网提供信息之真实性、合法性做任何明示或暗示的担保，以及对此承担的任何连带及附加责任。同时不对保险协议的协议方的法定义务和/或契约责任承担任何连带责任。钱袋网亦无义务参与与保险协议有关的任何理赔、纠纷处理等活动。
         </p>
        </main> 
      </div>
      </div> 
      <!-- </div> -->
        <script type="text/javascript">
          $("main").css("height",  window.screen.height - 54 + "px");
       </script>  
       
    </div>
</body>
</html>