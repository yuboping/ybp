<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>大转盘活动</title>
<%@include file="../../common/default.jsp"%>
<%@include file="../../common/head.jsp"%>
<link href="${staticPath }/css/style-canvas.min.css?version=${version}" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${staticPath }/js/jquery-2.2.3.min.js?version=${version}"></script>
<script type="text/javascript" src="${staticPath }/js/canvas/awardRotate.js?version=${version}"></script>
<script type="text/javascript">
var myScroll;//全局变量 srcoll定义

function loaded () {
	myScroll = new iScroll('wrapper', {
		useTransition: true,
		vScrollbar: false,//隐藏垂直滚动条
		scrollY: true, 
		freeScroll: true,
		bounce:true
	});
	/* myScroll = new iScroll('wrapper', { //初始化scroll，在onload事件中调用
		scrollY: true, 
		freeScroll: true,
		bounce:true}); */
}

/* document.addEventListener('touchmove', loaded, false); */


var turnplate={
		restaraunts:[],				//大转盘奖品名称
		colors:[],					//大转盘奖品区块对应背景颜色
		outsideRadius:192,			//大转盘外圆的半径
		textRadius:150,				//大转盘奖品位置距离圆心的距离
		insideRadius:48,			//大转盘内圆的半径
		startAngle:0,				//开始角度
		bRotate:false				//false:停止;ture:旋转
};

$(document).ready(function(){
	resultDiv();
	//动态添加大转盘的奖品与奖品区域背景颜色
	//turnplate.restaraunts = ["5元财富值 100%抵扣", "20元财富值10%抵扣", "20元财富值100%抵扣", "5元财富值 10%抵扣", "10元财富值100%抵扣", "10元财富值10%抵扣"];
	//turnplate.restaraunts = ["5元财富值 100%抵扣","10元财富值 100%抵扣","20元财富值 100%抵扣","5元财富值 10%抵扣","10元财富值 10%抵扣","20元财富值 10%抵扣"] ;
    turnplate.restaraunts = ${summary};
	turnplate.colors = ["#FFF4D6", "#FFFFFF", "#FFF4D6", "#FFFFFF","#FFF4D6", "#FFFFFF"];

	
	var rotateTimeOut = function (){
		$('#wheelcanvas').rotate({
			angle:0,
			animateTo:2160,
			duration:8000,
			callback:function () {
				alert('网络超时，请检查您的网络设置！');
			}
		});
	};

	
	var rotateFn = function (item, txt ,message,success,ratio) {
		var angles = item * (360 / turnplate.restaraunts.length) - (360 / (turnplate.restaraunts.length*2));
		if(angles<270){
			angles = 270 - angles; 
		}else{
			angles = 360 - angles + 270;
		}
		$('#wheelcanvas').stopRotate();
		$('#wheelcanvas').rotate({
			angle:0,
			animateTo:angles+1800,
			duration:8000,
			callback:function () {
				openDiv(success,message,ratio);
				turnplate.bRotate = !turnplate.bRotate;
			}
		});
	};
	
	
	/* $("#lucky").on("touchend",function() {
		$('#orderNo').blur();//按钮点击时强制使输入框失去焦点
		luckys();
	}); */
	

	$("#lucky").on("touchend",function() {
		$('#orderNo').blur();//按钮点击时强制使输入框失去焦点
		luckys();
	});
	
	$(".pointer").on("touchend",function() {
		luckys();
	});
	
	//解决input框将header顶出去  针对安卓端
    /* $('#orderNo').bind('focus',function(){  
        //$('header').css('position','static'); 
        $('header').css({'position':'relative','top':'0'});
        //或者$('#viewport').height($(window).height()+'px');  
    }).bind('blur',function(){  
        $('header').css({'position':'relative','top':'0'});  
        $("#wrapper").animate({scrollTop: 0});
        //或者$('#viewport').height('auto');  
    });   */
	
});

//旋转转盘 item:奖品位置; txt：提示语;
function rotateFn(item, txt ,message,success,ratio) {
	var angles = item * (360 / turnplate.restaraunts.length) - (360 / (turnplate.restaraunts.length*2));
	if(angles<270){
		angles = 270 - angles; 
	}else{
		angles = 360 - angles + 270;
	}
	$('#wheelcanvas').stopRotate();
	$('#wheelcanvas').rotate({
		angle:0,
		animateTo:angles+1800,
		duration:8000,
		callback:function () {
			openDiv(success,message,ratio);
			turnplate.bRotate = !turnplate.bRotate;
		}
	});
}

function luckys() {
	var orderNo = $("#orderNo").val();
	if (orderNo != '') {
		$.ajax({type:"post",dataType:"json",async:false,
			data:{"orderNo":orderNo},
    	    url:"${ctxPath}/lucky/start.do",
    	    success:function(data) {
    	    	var json = eval("(" + data + ")");
    	    	resultDiv();
    	    	if (json.success == "20") {
    	    		if(turnplate.bRotate)return;
    	    		turnplate.bRotate = !turnplate.bRotate;
    	    		rotateFn(json.lucky + 1, json.name, json.caifu,json.success,json.ratio);
    	    	} else {
    	    		openDiv(json.success,json.message,"");
    	    	}
    		}
    	});
	} else {
		openDiv("1","对不起请输入保单号","");
	}
}

function rnd(n, m){
	var random = Math.floor(Math.random()*(m-n+1)+n);
	return random;
	
}


//页面所有元素加载完毕后执行drawRouletteWheel()方法对转盘进行渲染
window.onload=function(){
	drawRouletteWheel();
	loaded();
};

function drawRouletteWheel() {    
  var canvas = document.getElementById("wheelcanvas");    
  if (canvas.getContext) {
	  //根据奖品个数计算圆周角度
	  var arc = Math.PI / (turnplate.restaraunts.length/2);
	  var ctx = canvas.getContext("2d");
	  //在给定矩形内清空一个矩形
	  ctx.clearRect(0,0,422,422);
	  //strokeStyle 属性设置或返回用于笔触的颜色、渐变或模式  
	  ctx.strokeStyle = "#FFBE04";
	  //font 属性设置或返回画布上文本内容的当前字体属性
	  ctx.font = '16px Microsoft YaHei';      
	  for(var i = 0; i < turnplate.restaraunts.length; i++) {       
		  var angle = turnplate.startAngle + i * arc;
		  ctx.fillStyle = turnplate.colors[i];
		  ctx.beginPath();
		  //arc(x,y,r,起始角,结束角,绘制方向) 方法创建弧/曲线（用于创建圆或部分圆）    
		  ctx.arc(211, 211, turnplate.outsideRadius, angle, angle + arc, false);    
		  ctx.arc(211, 211, turnplate.insideRadius, angle + arc, angle, true);
		  ctx.stroke();  
		  ctx.fill();
		  //锁画布(为了保存之前的画布状态)
		  ctx.save();   
		  
		  //----绘制奖品开始----
		  ctx.fillStyle = "#E5302F";
		  var text = turnplate.restaraunts[i];
		  var line_height = 20;
		  //translate方法重新映射画布上的 (0,0) 位置
		  ctx.translate(211 + Math.cos(angle + arc / 2) * turnplate.textRadius, 211 + Math.sin(angle + arc / 2) * turnplate.textRadius);
		  
		  //rotate方法旋转当前的绘图
		  ctx.rotate(angle + arc / 2 + Math.PI / 2);
		  
		  /** 下面代码根据奖品类型、奖品名称长度渲染不同效果，如字体、颜色、图片效果。(具体根据实际情况改变) **/
		  if(text.indexOf("值")>0){//流量包
			  var texts = text.split("值");
			  for(var j = 0; j<texts.length; j++){
				  ctx.font = j == 0?'bold 20px Microsoft YaHei':'14px Microsoft YaHei';
				  if(j == 0){
					  ctx.fillText(texts[j]+"值", -ctx.measureText(texts[j]+"值").width / 2, j * line_height);
				  }else{
					  ctx.fillText(texts[j], -ctx.measureText(texts[j]).width / 2, j * line_height);
				  }
			  }
		  }else if(text.indexOf("值") == -1 && text.length>6){//奖品名称长度超过一定范围 
			  text = text.substring(0,6)+"||"+text.substring(6);
			  var texts = text.split("||");
			  for(var j = 0; j<texts.length; j++){
				  ctx.fillText(texts[j], -ctx.measureText(texts[j]).width / 2, j * line_height);
			  }
		  }else{
			  //在画布上绘制填色的文本。文本的默认颜色是黑色
			  //measureText()方法返回包含一个对象，该对象包含以像素计的指定字体宽度
			  ctx.fillText(text, -ctx.measureText(text).width / 2, 0);
		  }
		  
		  //添加对应图标
		  if(text.indexOf("100%")>0){
			  var img= document.getElementById("shan-img");
			  img.onload=function(){  
				  ctx.drawImage(img,-20,25);      
			  }; 
			  ctx.drawImage(img,-20,25);  
		  }else if(text.indexOf("谢谢参与")>=0){
			  var img= document.getElementById("sorry-img");
			  img.onload=function(){  
				  ctx.drawImage(img,-20,25);      
			  };  
			  ctx.drawImage(img,-20,25);  
		  }
		  //把当前画布返回（调整）到上一个save()状态之前 
		  ctx.restore();
		  //----绘制奖品结束----
	  }     
  } 
}




function openDiv(falg,msg,ratio) {
	
	if (falg == '20') {
		$("#turn_panel_wealth").show();
		$("#wealthInfo").html(msg);
		$("#wealthInfos").html(msg);
		$("#ratioInfo").html(ratio);
	} else if (falg == '100') {
		$("#turn_panel_over").show();
		/* $("#overInfo").html(msg); */
	} else if (falg == '110') {
		$("#turn_panep_ling").show();
		/* $("#lingInfo").html(msg); */
	} else {
		$("#turn_panep_fail").show();
		$("#failInfo").html(msg);
	}
	
}


function resultDiv() {
	$("#turn_panel_wealth").hide();
	$("#turn_panep_fail").hide();
	$("#turn_panel_over").hide();
	/* $("#success_alert").hide();	
	$("#error_alert").hide(); */
}

</script>
</head>
<body>
<%-- <div data-role="header" data-position="fixed" class="zll_header" data-tap-toggle="false">
    <a data-ajax="false" href="javascript:self.location='${ctxPath}/mammon.do?agentNo=${ftuser.ftAgentno }&source=${ftuser.ftSource }&token=${ftuser.ftToken }&platform=inner';"  class="ui-btn ui-corner-all ui-btn-icon-notext ui-icon-back">返回</a> 
    <h2>保钱袋</h2>
</div> --%>
<header>
  <%-- <div class="header-left" onclick="location.href='${ctxPath}/mammon.do?agentNo=${ftuser.ftAgentno }&source=${ftuser.ftSource }&token=${ftuser.ftToken }&platform=iner'"> --%>
  <div class="header-left" onclick="history.go(-1);">
        <div class="header-btn-area">
            <!-- <i class="iconfont icon-fanhuijiantou"></i>  -->
            <%-- <img src="${staticPath }/img/icon/left.png" width="15px" alt="" height="15px"/> --%>
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
  <main class="">
    <!-- <div align="center" style="padding:0 1rem 1rem 1rem;">
      <h1>转一转，抽大奖</h1>
      <h3>限量抽取，百分百中奖</h3>
    </div> -->
    <img src="${staticPath }/img/icon/lucky.png" id="shan-img" style="display:none;">
    <div class="turnplate_banner">
      <div class="turnplate" style="background-image:url(${staticPath}/img/icon/turnplate-bg.png);background-size:contain;background-repeat:no-repeat;">
        <canvas class="item" id="wheelcanvas" width="422px" height="422px" style="transform: rotate(144deg);"></canvas>
        <img class="pointer" src="${staticPath}/img/icon/turnplate-pointer.png">
      </div>
    </div>
    <div class="" align="center">
      <input type="text" name="orderNo" id="orderNo" class="policy_number_input" placeholder="请输入保单号">
      <!-- <button class="btn_lucky" id="lucky" style="width:80%;margin-top:20px;">立即抽奖</button> -->
      <div id="lucky">
      <img class="btn_lucky" style="width:80%;margin-top:20px;" src="${staticPath}/img/lucky/start_lucky.png">
      </div>
    </div>
    <div class="lucky_footer">
        <img alt="" src="${staticPath }/img/lucky/lucky_footer.png" width="100%">
    </div>
    <!-- <div class="mat10 turn_rule" align="center">
      <div class="left"><hr></div>
      <div class="center"><h2>参与规则</h2></div>
      <div class="right"><hr></div>
    </div>
    <div class="mat10 turn_rule" align="center">
      <div style="flex:1;" align="center">成功购买保险</div>
      <div style="flex:0.5;" align="center">></div>
      <div style="flex:1;color:#fd3535;" align="center">安心等待两天</div>
      <div style="flex:0.5;" align="center"></div>
      <div style="flex:1;" align="center">保单生效</div>
      <div style="flex:0.5;" align="center">></div>
      <div style="flex:1;color:#fd3535;align:center;">开始抽奖</div>
    </div> -->
    
  </main>
    </div>
  </div>

  
<!-- 获取财富值提示框-->
  <div id="turn_panel_wealth" class="upboxmax" style="display:none;">
      <div class="bgcffffff turn_panel_popup_caifu" style="background:url('${staticPath}/img/icon/caifuzhi.png') no-repeat 0px 0px;background-size:100% 100%; ">
      	  <div style="position: relative;top:5rem;">
              <div align="center" >
                <span style="font-size:2.3rem;color:#FF5247;">￥<span id="wealthInfo"></span>财富值</span>
              </div>
              <div align="center" style="color:#FF5247;">
                 <span id="ratioInfo"></span>%抵扣
              </div>
              <div align="center" style="margin-top:6rem;" class="font8d9193">
                  <div>
                      <span id="wealthInfos"></span>元财富值已放入您的账户中，请查看
                  </div>
                  <button class=btn_confirm style="width:50%;margin-top:10px;" onclick="$('#turn_panel_wealth').hide();">确定</button>
              </div>
          </div>
          
      </div>
    </div>
    
    <!-- 抽奖完成提示框-->
    <div id="turn_panel_over" class="upboxmax" style="display:none">
      <div class="bgcffffff turn_panel_popup_ling" style="background:url('${staticPath}/img/icon/lucky_over.png') no-repeat 0px 0px;background-size:100% 100%; ">
          
          <div id="error_alert">
              <div align="center" class="font12em font8d9193">
                   <span id="overInfo">您来晚了,下次早点过来哦~~</span>
              </div>
          </div>
          
          <div align="center">
              <button class="btn_confirm" style="width:50%;margin-top:20px;" onclick="$('#turn_panel_over').hide();">确定</button>
          </div>
      </div>
    </div>
    
    <!-- 领取之后错误信息提示框-->
    <div id="turn_panep_ling" class="upboxmax" style="display:none;">
      <div class="bgcffffff turn_panel_popup_ling" style="background:url('${staticPath}/img/icon/lucky_ling.png') no-repeat 0 0;background-size:100% 100%; ">
          <div>
              <div align="center" class="font12em font8d9193">
                  <span id="lingInfo">此保单号已领过奖品</span>
              </div>
          </div>
          
          <div align="center">
              <button class="btn_confirm" style="width:50%;margin-top:20px;" onclick="$('#turn_panep_ling').hide();">确定</button>
          </div>
      </div>
    </div>
    
    <!-- 错误信息提示框-->
    <div id="turn_panep_fail" class="upboxmax" style="display:none;">
      <div class="bgcffffff turn_panel_popup_ling" style="background:url('${staticPath}/img/icon/lucky_find.png') no-repeat 0px 0px;background-size:100% 100%; ">
          <div id="">
              <div align="center" class="font12em font8d9193">
                  <span id="failInfo">请输入正确保单号</span>
              </div>
          </div>
          <div align="center" >
              <button class="btn_confirm" style="width:50%;margin-top:10px;" onclick="$('#turn_panep_fail').hide();">确定</button>
          </div>
      </div>
    </div>

</body>
</html>