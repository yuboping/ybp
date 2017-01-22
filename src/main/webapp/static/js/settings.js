var myScroll;//全局变量 srcoll定义,所有页3用上面jun


function loaded () {
	myScroll = new iScroll('wrapper', { //初始化scroll，在onload事件中调用
		scrollY: true, 
		freeScroll: true,
		mouseWheel: true, 
		vScrollbar: false,//隐藏垂直滚动条
		bounce:true,
		click: true});
}

//function showLoader() {  
//	//显示加载器.for jQuery Mobile 1.2.0  
//    $.mobile.loading('show', {  
//    	text: '加载中...', //加载器中显示的文字  
//        textVisible: true, //是否显示文字  
//        theme: 'm',        //加载器主题样式a-e  
//        textonly: false,   //是否只显示文字  
//        html: ""           //要显示的html内容，如图片等 
//    });  
//}  
////隐藏加载器.for jQuery Mobile 1.2.0  
//function hideLoader()  
//{  
//    //隐藏加载器  
//    $.mobile.loading('hide');  
//} 
//拨打电话，ios与android
function call(tel){
	   if (navigator.userAgent.match(/iphone/i)) {
		   location.href='tel:'+tel;
    } else {
 	   window.contact.contactService(tel);
    }
}

//ontouchstart 背景色变#dadada
function changeBgCDadada(obj){
	obj.style.backgroundColor='#dadada';
}
//ontouchend 背景色变#dadada
function changeBgCFFFFFF(obj){
	obj.style.backgroundColor='#ffffff';
}
//首页返回客户端
function backClicked(){
    if (navigator.userAgent.match(/iphone/i)) {
        location.href = 'qsqDefault.do?action=logout';
    } else {
        window.logout.exitWebView();
    }
}
$(document).ready(function(e) {
	//安卓端 ios端样式不兼容
//	if (navigator.userAgent.match(/iphone/i)) {
//		//header左边箭头修改iconfont icon-xiangyou
//		/*$(".header-btn-area").css("paddingBottom","1.0rem");*/
//		//服务页面右箭头
//		/*$(".iconfont.icon-xiangyou").css("marginBottom","1.3rem");*/
//	}else{
//		//安卓不处理
//	}
	
	//loaded();//settings.js内定义  main内滑动效果wrapper
});
