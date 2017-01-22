
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="../common/default.jsp"%>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="format-detection" content="telephone=no"/>
<meta http-equiv="expires" content="-1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<link rel="stylesheet" href="${staticPath }/css/404.css" />
<script>
      function backClicked(){
          if (navigator.userAgent.match(/iphone/i)) {
              location.href = '${ctxPath}/mammon.do?agentNo=${ftuser.ftAgentno }&source=${ftuser.ftSource }&token=${ftuser.ftToken }&platform=innr';
          } else {
              window.logout.exitWebView();
          }
      }
  </script>
</head>
<body>
  <div class=bg>
      <div class=cont>
        <div class=c1><IMG class=img1 src="${staticPath }/img/404/01.png"></div>
        <H2>Sorry…您的登录已过期，请重新登录。</H2>
        <div class=c2><span class=re onclick="backClicked();">返回</span></div>
      </div>
  </div>
  
</body>
</html>
