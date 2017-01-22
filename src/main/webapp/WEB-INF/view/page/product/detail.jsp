<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产品详情</title>
<%@include file="../../common/head.jsp"%>

</head>
<body onload="loaded();">
        <header>
          <%-- <div class="header-left" onclick="location.href='${ctxPath}/mammon.do?agentNo=${ftuser.ftAgentno }&source=${ftuser.ftSource }&token=${ftuser.ftToken }&platform=inner';"> --%>
          <div class="header-left" onclick="history.go(-1);">
            <div class="header-btn-area">
                <!-- <i class="iconfont icon-fanhuijiantou"></i>  -->
                <%-- <img src="${staticPath }/img/icon/left.png" width="15px" alt="" height="15px"/> --%>
                <!-- <span class="left-btn"></span> -->
                <span class="icon_img back"></span>
            </div>
          </div>
          <div class="header-tit"><h2>${prdetail.productName}</h2></div>
          <div class="header-right">
            
          </div>
        </header>
        <div id="wrapper">
          <div id="scroller">
              <main>
        		<!--内容页-->
        		<div class="insurance_detail">
        				<!--top保险内容-->
        				<div class="insurance_name"
        					Style="background: url(${staticPath}/img/insurance/${prdetail.imgUrl}) no-repeat;background-size:100% 100px; -moz-background-size:100% 100px;">&nbsp;</div>
        				<div class="insurance_from">由${prdetail.companyName}保险提供</div>
        				<div class="name_font">
        					<div class="name">${prdetail.productName}</div>
        					<div class="summary">${prdetail.productDetail}</div>
        				</div>
        				<div class="bgcffffff">
        					<!--保障范围-->
        					<c:choose>
        						<c:when test="${prdetail.id == 2}">
        							<!-- 儿童预防接种健康保险 -->
        							<div ontouchstart="changeBgCDadada(this);"  ontouchend="changeBgCFFFFFF(this)" 
        								onclick="location.href='${ctxPath }/bz_detail.do?id=${prdetail.id }'"
        								class="bgcffffff ui-content insurance_scope">
        								<div style="flex:0.9;">
                                              <div class="insurance_coverage">
                                                  <img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                  <!-- <i class="iconfont icon-baohusan"></i>  -->
                                                                                                                                                儿童预防接种意外伤害
                                              </div>
                                              <div class="insurance_coverage">
                                                  <img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                  <!-- <i class="iconfont icon-baohusan"></i>  -->
                                                                                                                                                     罹患该疫苗所防疫疾病疾病身故
                                              </div>
                                        </div>
                                        <div style="flex:0.1;text-align: right;align:right;">
                                          <!-- <div class="right_btn"></div> -->
                                          <img alt="" src="${staticPath}/img/icon/right_btn.png" style="vertical-align: middle;" width="13" height="13">  
                                          <!-- <i class="iconfont icon-iconfontjiantou"></i>  -->
                                        </div>
                                    </div>
        							<!--保障对象-->
        							<ul class="insurance_obj bgcffffff font232323 font13em">
        								<li><span class="font666666">保障对象 </span><span
        									class="insurance_right font929292">${prdetail.bzObject}</span></li>
        								<li><span class="font666666">保障金额</span> <span
        									class="insurance_right font232323">${prdetail.bzAmount}万元起</span></li>
        								<li><span class="font666666">保障期限</span><span
        									class="insurance_right font929292">${prdetail.bzTerm}年</span></li>
        								<li><span class="font666666">支付金额</span><span
        									class="insurance_right font929292"><span class="price">${prdetail.payAmount}</span>元起</span></li>
        							</ul>
        							
        						</c:when>
        						<c:when test="${prdetail.id == 3}">
        							<!-- 君安行-->
        							<div ontouchstart="changeBgCDadada(this);"  ontouchend="changeBgCFFFFFF(this)" 
        								onclick="location.href='${ctxPath }/bz_detail.do?id=${prdetail.id }'"
        								class="bgcffffff insurance_scope ui-content">
                                        <div style="flex:0.8;">
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                <!-- <i class="iconfont icon-baohusan"></i>  -->
            									乘坐客运民航班机：保额80万元
            								</div>
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                <!-- <i class="iconfont icon-baohusan"></i>  -->
            									乘坐非营运机动车：保额6万元
            								</div>
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                <!-- <i class="iconfont icon-baohusan"></i>  -->
            									乘坐客运机动车：保额6万元
            								</div>
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                <!-- <i class="iconfont icon-baohusan"></i>  -->
            									乘坐客运轨道交通车辆：保额40万元
            								</div>
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                <!-- <i class="iconfont icon-baohusan"></i>  -->
            									乘坐客运轮船：保额40万元
            								</div>
                                        </div>
                                        <div style="flex:0.2;text-align: right;align:right;">
                                          <!-- <div class="right_btn"></div> -->
                                          <img alt="" src="${staticPath}/img/icon/right_btn.png" style="vertical-align: middle;" width="13" height="13"> 
                                          <!-- <i class="iconfont icon-iconfontjiantou"></i> -->
                                        </div>
                                    </div>
        							<!--保障对象-->
        							<ul class="insurance_obj bgcffffff font232323 font13em">
        								<li><span class="font666666">保障对象 </span><span
        									class="insurance_right font929292">${prdetail.bzObject}</span></li>
        								<li><span class="font666666">保障金额</span> <span
        									class="insurance_right font232323">${prdetail.bzAmount}万元起</span></li>
        								<li><span class="font666666">保障期限</span><span
        									class="insurance_right font929292">${prdetail.bzTerm}年</span></li>
        								<li><span class="font666666">支付金额</span><span
        									class="insurance_right font929292"><span class="price">${prdetail.payAmount}</span>元起</span></li>
        							</ul>
        							
        						</c:when>
        						<c:when test="${prdetail.id == 4}">
        							<!-- 安居综合保险条款C-->
        							<div ontouchstart="changeBgCDadada(this);"  ontouchend="changeBgCFFFFFF(this)" 
                                        onclick="location.href='${ctxPath }/bz_detail.do?id=${prdetail.id }'"
        								class="bgcffffff insurance_scope ui-content">
                                        <div style="flex:0.8;">
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                <!-- <i class="iconfont icon-baohusan"></i>  -->
            									安居C家庭财产保障
            								</div>
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                 <!-- <i class="iconfont icon-baohusan"></i>         -->                                                                            
                                                                                                                                     第三者经济责任
            								</div>
                                        </div>
                                        <div style="flex:0.2;text-align: right;align:right;">
                                          <!-- <div class="right_btn"></div> -->
                                          <img alt="" src="${staticPath}/img/icon/right_btn.png" style="vertical-align: middle;" width="13" height="13"> 
                                          <!-- <i class="iconfont icon-iconfontjiantou"></i>  -->
                                        </div>
                                    </div>
        							<!--保障对象-->
        							<ul class="insurance_obj bgcffffff font232323 font13em">
        								<li><span class="font666666">保障对象 </span><span
        									class="insurance_right font929292">${prdetail.bzObject}</span></li>
        								<li><span class="font666666">保障金额</span><span
        									class="insurance_right font232323">${prdetail.bzAmount}元起</span></li>
        								<li><span class="font666666">保障期限</span><span
        									class="insurance_right font929292">${prdetail.bzTerm}年</span></li>
                                        <li><span class="font666666">保障地区</span><span
                                            class="insurance_right font929292">北京</span></li>
        								<li><span class="font666666">支付金额</span><span
        									class="insurance_right font929292"><span class="price">${prdetail.payAmount}</span>元起</span></li>
        							</ul>
        							
        						</c:when>
        						<c:when test="${prdetail.id == 1}">
        							<!-- 个人账户资金损失险-->
        							<div class="bgcffffff insurance_scope ui-content">
                                        <div style="flex:0.8;">
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                          <!-- <i class="iconfont icon-baohusan"></i>  -->
            									保障银行卡被盗刷|盗用|复制等造成的损失
            								</div>
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                <!-- <i class="iconfont icon-baohusan"></i>  -->
            									保障网银|钱袋宝|支付宝|微信等账户资金安全
            								</div>
                                        </div>
                                        <%-- <div style="flex:0.2;text-align: right;align:right;">
                                          <img alt="" src="${staticPath}/img/icon/right_btn.png" style="vertical-align: middle;" width="13" height="13">
                                        </div>  --%>
                                    </div>
        							<!--保障对象-->
        							<ul class="insurance_obj bgcffffff font232323 font13em">
        								<li><span class="font666666">保障对象 </span><span
        									class="insurance_right font929292">${prdetail.bzObject}</span></li>
        								<li><span class="font666666">保障金额</span><span
        									class="insurance_right font232323">${prdetail.bzAmount}万元起</span></li>
        								<li><span class="font666666">保障期限</span><span
        									class="insurance_right font929292">${prdetail.bzTerm}年</span></li>
        								<li><span class="font666666">支付金额</span><span
        									class="insurance_right font929292"><span class="price">${prdetail.payAmount}</span>元起</span></li>
        							</ul>
        							
        						</c:when>
        						<c:otherwise>
        							<div ontouchstart="changeBgCDadada(this);"  ontouchend="changeBgCFFFFFF(this)" 
                                        onclick="location.href='${ctxPath }/bz_detail.do'"
        								class="bgcffffff insurance_scope ui-content">
                                        <div style="flex:0.8;margin-top:-2px;">
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                <!-- <i class="iconfont icon-baohusan"></i>  -->
            									保障银行卡资金被盗造成的损失
            								</div>
            								<div class="insurance_coverage">
            									<img src="${staticPath}/img/icon/safeUnbrella.png" alt=""
                                                  width="16px" height="16px" align="absmiddle" style="margin-bottom:2px"/>
                                                  <!-- <i class="iconfont icon-baohusan"></i>  -->
            									保障银行卡资金被盗造成的损失
            								</div>
                                        </div>
                                        <div style="flex:0.2;text-align: right;align:right;">
                                          <!-- <div class="right_btn"></div> -->
                                          <img alt="" src="${staticPath}/img/icon/right_btn.png" style="vertical-align: middle;" width="13" height="13"> 
                                          <!-- <i class="iconfont icon-iconfontjiantou"></i>   -->
                                        </div>
                                    </div>
        							<!--保障对象-->
        							<ul class="insurance_obj bgcffffff font232323 font13em">
        								<li><span class="font666666">保障对象 </span><span
        									class="insurance_right font929292">${prdetail.bzObject}</span></li>
        								<li><span class="font666666">保障金额</span><span
        									class="insurance_right font232323">${prdetail.bzAmount}万元起</span></li>
        								<li><span class="font666666">保障期限</span><span
        									class="insurance_right font929292">${prdetail.bzTerm}年</span></li>
        								<li><span class="font666666">支付金额</span><span
        									class="insurance_right font929292"><span class="price">${prdetail.payAmount}</span>元起</span></li>
        							</ul>
        							
        						</c:otherwise>
        					</c:choose>
        
        
        				</div>
        
        				<!-- 同意协议部分 -->
        				<div class="ui-content agreement">
        					我已认真阅读 <a class="agree_title" data-ajax="false"
        						href="${ctxPath }/agree.do">《保钱袋免责申明》</a> 和
    							<a class="agree_title"
    								href="${ctxPath }/agreement.do?id=${prdetail.id }">
                                  <c:choose>
                                    <c:when test="${prdetail.id == 2}"> 《儿童预防接种健康保险条款》</c:when>
                                    <c:when test="${prdetail.id == 3}">《君安行条款》</c:when>
                                    <c:when test="${prdetail.id == 4}">《 安居综合保险条款C》</c:when>
                                    <c:when test="${prdetail.id == 1}">《 个人账户资金安全险条约》</c:when>
                                  </c:choose>
                                </a>
        					，了解并接受包括有关责任条款及免除责任条款、承保地域限制等约定。
        				</div>
        
        
        
        				<!-- <a href="#tuiguangma" data-role="button" data-rel="popup" data-position-to="window" class="btn_toubao">立即投保</a> -->
        				<div class="ui-content">
        					<button onclick="toubao()" class="btn_toubao">立即投保</button>
        				</div>
        				<c:if test="${prdetail.id == 1}">
                            <div align="left" class="add_desc">*因本保险由天津人保提供，所在城市将默认为天津，对您投保无任何影响。</div> 
                        </c:if>
        
        				<%-- <div data-role="popup" id="popup_taipingyang" data-tolerance="30,0" class="taipingyang_pop">
                              
                                <div data-role="header"  class="zll_header" data-tap-toggle="false" data-position="fixed">
                                    <a data-ajax="false" href="javascript:self.location='${ctxPath}/mammon.do';" class="ui-btn ui-corner-all ui-btn-icon-notext ui-icon-back">返回</a>
                                    <h1> ${prdetail.productName} </h1>
                                </div>
                                <iframe id="iframe_page" style="padding-top:50px;overflow-y:scroll;-webkit-overflow-scrolling: touch;" height="100%" width="100%" frameborder="no" border="0" marginwidth="0" marginheight="0" seamless></iframe>
                            </div>  --%>
        
        				<div id="show_alert" class="none_connection">没有可用链接</div>
        		</div>
        
              </main>
          </div>
       </div>
       <div style="height: 5rem;"></div>

</body>
<script>

  //字体图片随窗体缩放
  //function changeSize() {
  //    var sreenWidth = $(window).width();
   //   $("html").css("fontSize",sreenWidth/32);
  //}

  //window.onresize=function() {
  //    changeSize();
  //};
  
/*   window.onload=function() {
      changeSize();
  }; */
  
  var checkSubmitFlg = false; 

  function checkSubmit(){ 

  if(checkSubmitFlg ==true){ 
	  return false; //当表单被提交过一次后checkSubmitFlg将变为true,根据判断将无法进行提交。 
  } 

  checkSubmitFlg = true; 

  return true; 

  } 
  
  var checkSubmitFlg = false; 
  function toubao() {
		//var iframe_page = document.getElementById("iframe_page")
		//iframe_page.src ="http://m.ecpic.com.cn/mobilemsb/product/initPrd?mId=106043&vCode=492109";
		//$("#iframe_page").animate({scrollTop: 0});
		//$("#baoqiandai_content").animate({scrollTop: 0});
		// "http://www.25xt.com/html5css3/8092.html";
		//http://m.ecpic.com.cn/mobilemsb/product/initPrd?mId=106021&vCode=201709  个人
		//http://m.ecpic.com.cn/mobilemsb/product/initPrd?mId=106025&vCode=451709   安居
		//http://m.ecpic.com.cn/mobilemsb/product/initPrd?mId=106030&vCode=091809 君安行
		//http://m.ecpic.com.cn/mobilemsb/product/initPrd?mId=106043&vCode=492109 儿童
		//$( "#popup_taipingyang" ).popup( "open",{x:0,y:0,history:false} );
		//return false;
		
		if(checkSubmit()){
			var productId = ${prdetail.id };
			$.ajax({
				type : "post",
				url : "${ctxPath}/insure.do",
				dataType : "json",
				async : false,
				data : {
					productId : productId
				},
				/* beforeSend: function () {         
		            showLoader();
		        },
		        complete:function(){       
		            hideLoader();
		        }, */
				success : function(data) {
					var st = eval("("+data+")");
					if ("No link available" == st.status) {
						//$( "#show_alert" ).popup( "open" );
						$("#show_alert").fadeIn(3000);
						$("#show_alert").fadeOut(3000)
					} else {
						//法一 不赞同
						if(st.productId == 1){
							location.href = st.url+"&showNav=1&back=index";
						}else{
							location.href = st.url+"&showNav=1";
						}
						//法二  弹出框+iframe 样式有问题
						//var iframe_page = document.getElementById("iframe_page")
						//iframe_page.src = data;
						//$( "#popup_taipingyang" ).popup( "open",{x:0,y:0,history:false} );
						//法三 跳新页面，嵌iframe
						//window.location.href = "${ctxPath }/in_detail.do?id="+productId+"&FtCode="+st.status;
					}
				}
			});	
		}
	}
</script>
</html>

