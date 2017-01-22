var ftOrderNo = $('#warranty_number').val();
var ftName = $('#recognizee').val();
$(document).ready(function () {
//	$('#warranty_number').val("");
//	$('#recognizee').val("");
	inquery_chk($('#warranty_number'));
	inquery_chk($('#recognizee'));
	//查询按钮功能
	$("#inquery_submit_btn").click(function () {
		$.ajax({
	        type: 'post',
	        url: project.ctxPath+'/orderVerification.do',
	        data: {
	        	ftOrderNo:$.trim($('#warranty_number').val()),
	        	ftName:$.trim($('#recognizee').val())
	        },
	        dataType: 'json',
	        beforeSend: function(){
	        	$("#loading_dialog").removeClass("hide");
	        },
	        complete:function(){
	        	$("#loading_dialog").addClass("hide");
	        },
	        success: function (data) {
	        	$("#loading_dialog").addClass("hide");
	            var result = JSON.parse(data);
	            console.log(result);
	            if(result.rstcode === "-1"  ){
	            	//-1的情况为查不到保单号，弹出提示框
	            	$("#failInfo").html(result.rstmsg);
	            	$("#none_number_fail").removeClass("hide");
	            }else{
	            	$("#none_number_fail").addClass("hide");
	            	//1 的情况，根据保单号跳转至详情页面
	            	location.href=project.ctxPath+"/orderDetail.do?ftOrderNo="+$('#warranty_number').val().trim();
	            }
	        },
	        error: function () {
	        	$("#loading_dialog").addClass("hide");
	        	$("#ajax-alert-info").html("网络异常");
	    		show_alert($("#ajax-alert"),1);
	        }
	    });
	});
});
/*保单查询验证*/
function inquery_chk(obj){
//	console.log(obj);
//	console.log($.trim($(obj).val()));
	//当前输入框有值，展示快速删除按钮，无值的话不展示
	if($.trim($(obj).val())){
		//有值
		$(obj).next().removeClass("hide");
	}else{
		//无值
		$(obj).next().addClass("hide");
	};
	//查询按钮的disabled状态的变更
	if ($.trim($('#warranty_number').val()) && $.trim($('#recognizee').val())) {
		$('#inquery_submit_btn').attr("disabled", false).removeClass().addClass("warranty_inquery_btn"); 
//		$('#inquery_submit_btn').attr("disabled", false);
	} else {
//		$('#inquery_submit_btn').attr("disabled", true);
		$('#inquery_submit_btn').attr("disabled", true).removeClass().addClass("warranty_inquery_btn_disabled");
	}
}

/*快速删除功能*/
function clear_input(obj){
	$(obj).prev().val('');
	$(obj).addClass('hide');
	$('#inquery_submit_btn').attr("disabled", true).removeClass().addClass("warranty_inquery_btn_disabled");
}
