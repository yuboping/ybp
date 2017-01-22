<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>已购保单</title>
<%@include file="../../common/head.jsp"%>
<script type="text/javascript" src="${staticPath }/js/server/warrantyList.js?version=${version}"></script>
</head>
<body>
  <div id="service_content">
  	  <header>
        <%--<div class="header-left"  onclick="location.href='${ctxPath}/mammon.do?agentNo=${ftuser.ftAgentno }&source=${ftuser.ftSource }&token=${ftuser.ftToken }&platform=inner'"> --%>
        <div class="header-left" onclick="history.go(-1);">
          <div class="header-btn-area"> 
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
                <!-- <div id="pullDown">
                  <span class="pullDownIcon"></span><span class="pullDownLabel">Pull down to refresh...</span>
                </div> -->
                <div id="scroller-content">
  			  	    <ul class="warrantyList" id="warrantyList">
                      <c:forEach items="${orderList}" var="order" >
                          <li>
                            <a href="${ctxPath }/orderDetail.do?ftOrderNo=${order.ftOrderno}">
                              <div class="img_area"><img alt="" src="${staticPath}/img/icon/${order.smallimgUrl }"></div>
                              <div class="insurance_area">
                                <div class="font232323 font13em">${order.productName }</div>
                                <div class="font929292 font11em">购买时间：${order.ftDate }</div>
                              </div>
                              <div class="insurance_price font232323 font11em" align="center">
                                    ${order.ftAmount }元
                              </div>
                              <div class="right_area" align="right">
                                  <%-- <img src="${staticPath}/img/icon/right_btn.png" align="absmiddle"/>  --%>
                                  <span class="db btn_right_arraw"></span>
                              </div>
                            </a>
                          </li>
                      </c:forEach>
                      <%-- <li>
                        <a href="${ctxPath }/orderDetail.do">
                          <div class="img_area"><img alt="" src="${staticPath}/img/icon/personal_icon.jpg"></div>
                          <div class="insurance_area">
                            <div class="font232323 font13em">个人资金账户安全险</div>
                            <div class="font929292 font11em">购买时间：2016-06-30</div>
                          </div>
                          <div class="insurance_price font232323 font11em">
                                6.2元
                          </div>
                          <div class="right_area" align="center">
                              <img src="${staticPath}/img/icon/right_btn.png" align="absmiddle"/> 
                          </div>
                        </a>
                      </li>
                       --%>
                    </ul>
  			  	</div>	
                <!-- 上拉刷新部分 -->
                <!-- <div id="scroller-pullUp" align="center">
                  <span id="up-icon" class="icon-double-angle-up pull-up-icon"></span>
                  <span id="pullUpLabel" class="pull-up-msg">上拉刷新</span>
                </div>  -->
                <!-- 第一次进来时，length少于pageSize时，不显示上拉刷新，表示已经无更多数据加载 -->
                <c:if test="${fn:length(orderList) >= pageSize}">
                    <div id="pullUp">
                      <span class="pullUpIcon"></span>
                      <span class="pullUpLabel">上拉刷新  </span>
                    </div>
                </c:if> 
                
                <!-- 找不到保单提示信息 -->
                <div class="warranty_list_none font808080 font11em" align="center">
                    <span class="lineE4E4E4" style="text-decoration:line-through;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;*找不到保单？&nbsp;<span class="lineE4E4E4" style="text-decoration:line-through;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </div>
                <div class="font808080 font11em" align="center">
                    购买保险成功的两天后才会显示哦
                </div>
                <div style="height:4.5rem;">&nbsp;</div>
  	       </div>
       </div>
    </div>
</body>
</html>