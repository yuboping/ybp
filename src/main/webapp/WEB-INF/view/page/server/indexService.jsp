<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>保钱袋-服务</title>
<%@include file="../../common/head.jsp"%>
<script type="text/javascript" src="${staticPath }/js/index_service.js?version=${version}"></script>
</head>
<body onload="loaded();">
		<div id="service_content">
			  <header>
                <%--<div class="header-left"  onclick="location.href='${ctxPath}/mammon.do?agentNo=${ftuser.ftAgentno }&source=${ftuser.ftSource }&token=${ftuser.ftToken }&platform=inner'"> --%>
                <div class="header-left">
                  <!-- <div class="header-btn-area"> 
                      <span class="left-btn"></span>   
                  </div> -->
                </div>
                <div class="header-tit"><h2>保钱袋</h2></div>
                <div class="header-right">
                  
                </div>
              </header>
			  <div id="wrapper" >
                <div id="scroller">
                      <main>
        			  	<div class="white">
        	                <div class="item_t" id="baodanchaxun"  onclick='self.location.href="${ctxPath }/orderList.do?pageNo=0&pageSize=10"'>
                                                                                                                          已购保单
                                   <div class="fr btn_right_arraw" style="margin-top: 2px;">
                                      <%-- <img src="${staticPath}/img/icon/right_btn.png" align="absmiddle"  width="13px" height="13px"   id="baodanchaxun_img"/> --%> 
                                      <%-- <img src="${staticPath}/img/icon/right_btn.png" align="absmiddle"  width="13px" height="13px"/> --%>
                                      
                                   </div>
                                   
        	                </div>
        	                 
                    	</div>
                    	
                    	<div class="white clear">
        	                <div class="item_t" id="lipeiqiuzhu" onclick='self.location.href="${ctxPath }/claim.do"'>
        	                    	理赔求助<!-- <i class="iconfont icon-iconfontjiantou fr"></i>  -->
                                <div class="fr btn_right_arraw" style="margin-top: 2px;">
                                      <%-- <img src="${staticPath}/img/icon/right_btn.png" width="13px" height="13px" align="absmiddle"/>  --%>
                                </div>
        	                    
        	                </div>
        	                
                    	</div>
        			  	
                        <div class="white clear">
                          <div class="item_t" id="lipeiqiuzhu" onclick='self.location.href="${ctxPath }/commonQuests.do"'>
                                                                                                   常见问题
                                <div class="fr btn_right_arraw" style="margin-top: 2px;">
                                      <%-- <img src="${staticPath}/img/icon/right_btn.png" width="13px" height="13px" align="absmiddle" />  --%>
                                </div>
                          </div>
                          
                      </div>
                  
        			  	<div class="white clear">
        	                <div class="item_t" id="kefurexian">
        	                    	客服热线
                                    <div class="fr" >
                                         <img src="${staticPath}/img/icon/right_btn.png" width="13px" height="13px" align="absmiddle" id="kefurexian_img"/> 
                                    </div>
<!--                                 <i class="iconfont icon-iconfontjiantou fr" id="kefurexian_img"></i>  
 -->        	                   
        	                </div>
        	                <div class="clear item_desc" id="kefurexian_det">
        	                        <p class="">太平洋客服：<a onclick="call('95500');" class="tel_a">95500</a></p>
        			                <p class="">中国人民保险客服：<a onclick="call('95518');" class="tel_a">95518</a></p>
                                    <p class="">钱袋宝客服：<a onclick="call('4006725007');" class="tel_a">4006725007</a></p>
        	                </div>
                    	</div>
        			  	
        			  		
        			  </main>
			       </div>
                </div>
			   <!--首页tab切换-->
				<footer>
                <div class="footer-left off" onclick="history.go(-1)();">
                  <!-- <i class="iconfont icon-zhuye"></i> -->
                  <%-- <img src="${staticPath }/img/icon/insurance_off.png" width="20px" alt="" height="20px" style="margin-bottom: 2px;"/> --%>
                  <div align="center">
                      <span class="db insurance_off_btn"></span>
                  </div>
                  <div class="footer-tit">保钱袋</div>
                </div>
                <div class="footer-right on">
                  <!-- <i class="iconfont icon-aixin32pt"></i>  -->
                  <%-- <img src="${staticPath }/img/icon/service_on.png" width="20px" alt="" height="20px" style="margin-bottom: 2px;"/> --%>
                  <div align="center">
                      <span class="db service_on_btn"></span>
                  </div>
                  <div class="footer-tit">服务</div>
                </div>
              </footer>
      		</div>
</body>
</html>