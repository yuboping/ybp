<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产品详情</title>
<%@include file="../../common/head.jsp"%>
</head>
<body>
<!-- <iframe src="#" id="iframepage" marginheight="0" marginwidth="0"
                  frameborder="0" height=100% name="iframepage"
                  style="width: 100%;"> 
            </iframe>  -->
			<div id="" style="height:100%">
			<div data-role="header" data-position="fixed" class="zll_header" data-tap-toggle="false">
			    <a data-ajax="false" href="javascript:self.location='${ctxPath}/mammon.do?agentNo=${ftuser.ftAgentno }&source=${ftuser.ftSource }&token=${ftuser.ftToken }&platform=reutrns';" class="ui-btn ui-corner-all ui-btn-icon-notext ui-icon-back">返回</a>
			    <h2>${name }</h2>
			</div>
			
			<!--内容页-->
			<div data-role="main" class="insurance_detail" style="height:100%">
                <iframe id="iframe_page" src="${url }" style="" height="100%" width="100%"  frameborder="no" border="0" marginwidth="0" marginheight="0" seamless></iframe>
            </div>    
            <script type="text/javascript">
            	var iframe_page = document.getElementById("iframe_page")
				iframe_page.height = $(window).height()-$(".zll_header").height() +"px";
            	$("#iframe_page").animate({scrollTop: 0});
            </script>

		</div>
		
</body>
</html>

