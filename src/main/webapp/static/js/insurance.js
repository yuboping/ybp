$(function(){

	
})

function gotoBuy(){
	//ajax跨域请求报错已拦截跨源请求：同源策略禁止读取位于 http://m.ecpic.com.cn/mobilemsb/product/initPrd?mId=106030&vCode=091809 的远程资源。（原因：CORS 头缺少 'Access-Control-Allow-Origin'）。
//	$.ajax({
//		type:"get",
//		url:"http://m.ecpic.com.cn/mobilemsb/product/initPrd?mId=106030&vCode=091809",
//		async:true,
//		data:{},
//		dataType:"html",
//		headers: {
//          "Access-Control-Allow-Origin":'*',
//          "Access-Control-Allow-Methods":'GET, POST'
//          /*"Access-Control-Allow-Headers":"X-Requested-With"*/
//     },
//		error:function(){
//			
//		},
//		success:function(res){
//			$("#test_content").html(res);
//		}
//	});
location.href="http://m.ecpic.com.cn/mobilemsb/product/initPrd?mId=106030&vCode=091809"

}

