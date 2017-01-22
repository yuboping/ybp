<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>已购保单-无数据</title>
<%@include file="../../common/head.jsp"%>
</head>
<body onload="loaded();">
  <div id="service_content">
  	  <header>
        <div class="header-left" onclick="history.go(-1);">
          <div class="header-btn-area"> 
              <!-- <span class="left-btn"></span>    -->
              <span class="icon_img back"></span>
          </div> 
        </div>
        <div class="header-tit add" align="center"><h2>已购保单</h2></div>
        <div class="header-right">
            <div class="font14em" onclick="location.href='${ctxPath }/orderQuery.do'">查询保单</div>
        </div>
      </header>
  	  <div id="wrapper" >
           <div id="scroller">
                <div align="center" class="bgcffffff list_none">
                    <div class="bg_non_icon">
                      <img alt="" src="${staticPath}/img/icon/none_list_face.png">
                    </div>
                    <div class="margin_top_25">
                        <span class="font12em font929292">出来混没个保障，总有些裸奔的赶脚呢！</span>
                    </div>
                    <div class="margin_top_10">
                        <a class="font13em font12b7f5" href="${ctxPath }/backIndex.do">快去选购吧~>></a>
                    </div>
                </div>
                <!-- 找不到保单提示信息 -->
                <div class="warranty_none font808080 font11em" align="center">
                    <span class="lineE4E4E4" style="text-decoration:line-through;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;*找不到保单？&nbsp;<span class="lineE4E4E4" style="text-decoration:line-through;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </div>
                <div class="font808080 font11em" align="center">
                    购买保险成功的两天后才会显示哦
                </div>
  	       </div>
       </div>
    </div>
</body>
</html>