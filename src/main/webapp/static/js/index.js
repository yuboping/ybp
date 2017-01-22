$(document).ready(function(e) {
	
   var mySwiper = new Swiper ('.swiper-container', {
    direction: 'horizontal',//vertical  horizontal
    loop: true,
    autoplay : 3000,
	autoplayDisableOnInteraction : true,
	speed:300,
	/*onlyExternal : true,*///禁止手势滑动
    // 如果需要分页器
    pagination: '.swiper-pagination',

  })     
   var vw = window.screen.width;
	//banner尺寸
	var banner_originalHeight = 225;
	var banner_originalWidth = 640;
	var imgHeight = Math.ceil(vw * banner_originalHeight /banner_originalWidth) + "px";
	$(".swiper-container,.swiper-slide img").height(imgHeight);
});
function backClicked(){
    if (navigator.userAgent.match(/iphone/i)) {
        location.href = 'qsqDefault.do?action=logout';
    } else {
        window.logout.exitWebView();
    }
}