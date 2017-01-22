<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保钱袋服务协议</title>
<%@include file="../../common/head.jsp"%>
<style type="text/css">
 main{
 background: url("${staticPath }/img/slideDetail/personalAccountDetail.jpg") no-repeat 0 0;
 background-size: 100% 100%;
 height:750px; 
}
</style>
</head>
<body onload="loaded();">
      <header>
          <div class="header-left" onclick="history.go(-1);">
            <div class="header-btn-area">
                <!-- <span class="left-btn"></span> -->
                <span class="icon_img back"></span>
            </div>
          </div>
          <div class="header-tit"><h2>保钱袋</h2></div>
          <div class="header-right">
            
          </div>
      </header>
      <div id="wrapper" >
          <div id="scroller">
           <main>
             <a class="buy_now_btn" href="${ctxPath}/detail.do?productId=1&platform=inner">
                  <img src="${staticPath }/img/icon/buy_now_btn.png"  alt="" width="80%"/>
             </a> 
           </main>
     </div>
    </div>
      
</body>
</html>