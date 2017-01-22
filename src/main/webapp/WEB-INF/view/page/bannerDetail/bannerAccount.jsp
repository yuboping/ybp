<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人账户资金安全险</title>
<%@include file="../../common/head.jsp"%>
<style type="text/css">
main {
	background: url("${staticPath }/img/slideDetail/wechat_spread.jpg")
		no-repeat 0 0;
	background-size: 100% 100%;
	height: 568px;
}

.buy_now_btn_wechat {
	position: absolute;
	bottom: 4%;
	align: center;
	text-align: center;
	height: 43px;
	/* width:213px; */
}
</style>
</head>
<body>

	<main> <a class="buy_now_btn_wechat" href="http://www.epicc.com.cn/wap/groupBuy/groupbuy/tg?id=12009702051&riskcode=JBD_B"  > 
	<img src="${staticPath }/img/slideDetail/wechat_buynow.png" alt=""
		width="60%" onclick="buyIns()"/>
	</a> </main>


<script type="text/javascript">
	
    $(document).ready(function(e) {
    	var ViewWidth = window.screen.width;
    	var ViewHeight = window.screen.height;
    	var imgHeight = Math.ceil(ViewWidth * 71 /40);//向上取整
    	$("main").css("height",imgHeight<ViewHeight?ViewHeight:imgHeight);
    });
    
    function buyIns() {
    	var openId = "";
    	$.ajax({
			type : "post",
			url : "${ctxPath}/buyAccBanner.do", 
			async : false,
			data : {
				openId : "1"
			} ,
			success : function(data) {
					
			}
		});	
    }
    	
    
</script>
</body>
</html>