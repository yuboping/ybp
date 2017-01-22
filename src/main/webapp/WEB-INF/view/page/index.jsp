<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保钱袋-保险</title>
<%@include file="../common/head.jsp"%>
<!--调用首页图片轮播的js-->
<link rel="stylesheet" href="${staticPath}/css/swiper-3.3.1.min.css?version=${version}" />
<script type="text/javascript" src="${staticPath }/js/swiper.min.js?version=${version}"></script>
</head>
<body style="width: 100%;" onload="loaded();">
        <header>
          <div class="header-left" onclick="backClicked();">
            <div class="header-btn-area">
                <!-- <i class="iconfont icon-fanhuijiantou"></i>  -->
                <span class="icon_img back"></span><!-- left-btn -->
                <%-- <img src="${staticPath }/img/icon/left.png" width="15px" alt="" height="15px"/> --%>
            </div>
            
          </div>
          <div class="header-tit"><h2>保钱袋</h2></div>
          <div class="header-right">
            
          </div>
        </header>
		<!--保钱袋内容页-->
        <div id="wrapper" >
          <div id="scroller">
            <main>
                <div class="swiper-container" id="swiper-container">
                    <div class="swiper-wrapper">
                    	<c:forEach items="${bannerList }" var="summary">
                        <div class="swiper-slide" onclick="location.href='${ctxPath }/${summary.imgUrl }'"><img src="${summary.imgPath }" alt="" width="100%"></div>
                        </c:forEach>
                    </div>
                    <!-- 如果需要分页器 -->
                    <div class="swiper-pagination"></div>
                </div> 
                
                <div class="ui-content">
                  <span class="font14em font929292 user-select-none">推荐产品</span>
                </div>
                <!-- <div><span class="icon_img back"></span></div> -->
                <c:forEach items="${list}" var="product" >
                <div class="index_recommend_list font929292">
                  <div class="index_recommend_one ui-content">
                    <a href="${ctxPath}/detail.do?productId=${product.id }&platform=product">
                      <%-- <img src="${staticPath }/img/insurance/${product.imgUrl}" width="100%" alt="" height="140px"/> --%>
                      <div class="insurance_name"
                        Style="background: url(${staticPath}/img/insurance/${product.imgUrl}) no-repeat;background-size:100% 140px; -moz-background-size:100% 140px;height:140px;">&nbsp;</div>
                    </a>
                    <div class="index_recommend_description user-select-none">
                      <div class="left_desc">
                        <div class="index_recommend_name font232323">${product.name }
                          <c:if test="${product.id eq 4 }">&nbsp;&nbsp;<span class="activity-area">北京专供</span></c:if>
                        </div>
                        <div class="font929292 font10em">${product.detail }</div>
          
                      </div>
          
                      <div class="right_desc">
                        <span class="price">${product.amount}</span> <span class="font232323 font13em">元起</span>
                      </div>
                    </div>
                  </div>
                </div>
                </c:forEach>
                <div style="height:4.5rem;">&nbsp;</div>
            </main>
           </div>
         </div> 
         <!-- 登录过期提示 -->
        <div class="upboxmax user-select-none hide" id="logout">
            <div class="outer">
                <div class="inner" style=" border-radius:1rem; -webkit-border-radius:1rem;">
                    <h1 class="fm155 pa2rem font333333">您的登录已过期，请重新登录。</h1>
                    
                    <div style="border-top:1px solid #dfdfdf;">
                        <div style=" color: #208afb;font-size: 1.8rem; padding:1rem;" align="center"
                        onclick="event.stopPropagation();this.style.background = '#f4f4f4';backClicked(); " ontouchend="this.style.background = '#FFF'" >
                            确定
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
          <div class="footer-left on">
            <!-- <i class="iconfont icon-zhuye"></i> -->
            <%-- <img src="${staticPath }/img/icon/insurance_on.png" width="20px" alt="" height="20px" style="margin-bottom: 2px;"/> --%>
            <div align="center">
                <span class="db insurance_on_btn"></span>
            </div>
            <div class="footer-tit">保钱袋</div>
          </div>
          <div class="footer-right off" onclick="location.href='${ctxPath}/server.do'">
            <!-- <i class="iconfont icon-aixin32pt"></i> -->
            <div align="center">
                <span class="db service_off_btn"></span>
            </div>
            <%-- <img src="${staticPath }/img/icon/service_off.png" width="20px" alt="" height="20px" style="margin-bottom: 2px;"/>  --%>
            <div class="footer-tit">服务</div>
          </div>
        </footer>
        <!-- 登录信息过期提示 login_error.jsp-->
       <%-- <%@include file="../common/login_error.jsp"%> --%>
    
<script type="text/javascript">
  //字体图片随窗体缩放
    /* function changeSize(){
        var sreenWidth = $(window).width();
        $("html").css("fontSize",sreenWidth/32);
    }

    window.onresize=function(){
        changeSize();
    };
    window.onload=function(){
        changeSize();
    }; */
    
	$(document).ready(function(e) {
		  var mySwiper = new Swiper ('.swiper-container', {
		    direction: 'horizontal',//vertical  horizontal
		    loop: true,
		    autoplay : 2000,
			autoplayDisableOnInteraction : true,
			speed:300,
		    // 如果需要分页器
		    pagination: '.swiper-pagination',
		  }) 
		   
		  //if (navigator.userAgent.match(/iphone/i)) {
				
		//		$("main").css("top","4.5rem");
			//}else{
			//	//安卓不处理
			//}
		  /* if (window.applicationCache.status == window.applicationCache.UPDATEREADY) { 
			  window.applicationCache.update(); 
		  } */
	});
</script>
	
		
	</body>
</html>