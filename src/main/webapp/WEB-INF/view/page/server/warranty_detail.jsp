<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保单详情</title>
<%@include file="../../common/head.jsp"%>
</head>
<body>
  <div id="service_content">
  	  <header>
        <div class="header-left" onclick="history.go(-1);">
          <div class="header-btn-area"> 
              <!-- <span class="left-btn"></span>   -->
              <span class="icon_img back"></span>
          </div> 
        </div>
        <div class="header-tit"><h2>保单详情</h2></div>
        <div class="header-right">
        </div>
      </header>
  	  <div id="wrapper" >
        <div id="scroller">
            <div class="insurance_detail">
                <!--top保险内容-->
                <div class="insurance_name"
                  Style="background: url(${staticPath}/img/insurance/${orderDetailMap.imgUrl }) no-repeat;background-size:100% 100px; -moz-background-size:100% 100px;">&nbsp;</div>
                <div class="insurance_from">
                  <!-- 太平洋保险logo -->
                  <%-- <img alt="" src="${staticPath}/img/icon/PICC_logo.png" height="20px"> --%>
                  <!-- 人保logo -->
                  <img alt="" src="${staticPath}/img/icon/${orderDetailMap.logoimgUrl }" height="18px">
                </div>
                <div class="name_font">
                  <div class="name">${orderDetailMap.productName }</div>
                  <div class="summary">${orderDetailMap.ftOrderNo }</div>
                </div>
                <div class="bgcffffff">
                  <!--保障对象-->
                  <ul class="insurance_obj bgcffffff font232323 font13em">
                    <li><span class="font666666">投保人 </span><span
                      class="insurance_right font929292">${orderDetailMap.applicantName }</span></li>
                    <li><span class="font666666">被保人 </span><span
                      class="insurance_right font232323">${orderDetailMap.insuredName }</span></li>
                    <li onclick="location.href='${ctxPath }/bz_detail.do?id=${orderDetailMap.productId }'"><span class="font666666">提供保障</span><span
                      class="insurance_right font12b7f5">查看详情&nbsp;&nbsp;<img alt="" src="${staticPath}/img/icon/right_btn_blue.png" style="width:0.6rem;height:1.1rem;position: relative;right:1px;bottom:1px;"></span></li> 
                    <li><span class="font666666">保障金额</span><span
                      class="insurance_right font232323">最高可赔${orderDetailMap.bzAmount }<c:if test="${orderDetailMap.productId == 4}">千</c:if><c:if test="${orderDetailMap.productId != 4}">万</c:if>元</span></li>
                    <li><span class="font666666">支付金额</span><span
                      class="insurance_right font929292">${orderDetailMap.payAmount }元起</span></li>
                    <li><span class="font666666">购买时间</span><span
                      class="insurance_right font929292">${orderDetailMap.ftDate }</li>
                  </ul>
                </div>
                <div class="ui-content">查看
                    <a class="font12b7f5" href="${ctxPath }/agreement.do?id=${orderDetailMap.productId }">
                      <c:choose>
                        <c:when test="${orderDetailMap.productId == 2}"> 《儿童预防接种健康保险条款》</c:when>
                        <c:when test="${orderDetailMap.productId == 3}">《君安行条款》</c:when>
                        <c:when test="${orderDetailMap.productId == 4}">《 安居综合保险条款C》</c:when>
                        <c:when test="${orderDetailMap.productId == 1}">《 个人账户资金安全险条约》</c:when>
                      </c:choose>
                    </a>
                </div>
            </div>
  	       </div>
       </div>
    </div>
</body>
</html>