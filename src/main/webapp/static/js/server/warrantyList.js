var myScroll,
	pullUpEl, pullUpOffset,
	generatedCount = 1,//首次进入页面页码从0开始计算，js内计算从1开始
	loadMore = true;//可请求下一页
function pullUpAction () {
	setTimeout(function () {// <-- Simulate network congestion, remove setTimeout from production!
		if(loadMore === true){//可请求下一页数据
			var li;//新增的li，需提前定义
			$.ajax({
				type : "post",
				url : project.ctxPath+"/orderListNext.do",
				dataType : "json",
				async : false,
				data : {
					pageNo : generatedCount,
					pageSize :project.pageSize
				},
				success : function(data) {
//					console.log(data);
					var orderList = JSON.parse(data);
					console.log(orderList);
					for (i=0; i<orderList.length; i++) {
						li = $("<li/>").appendTo($(".warrantyList"))
						li.append('<a href="'+project.ctxPath+'/orderDetail.do">'
			                    +'<div class="img_area"><img alt="" src="'+project.staticPath+'/img/icon/'+orderList[i].smallimgUrl+'"></div>'
			                    +'<div class="insurance_area">'
			                    +'<div class="font232323 font13em">'+orderList[i].productName+'</div>'
			                    +'<div class="font929292 font11em">购买时间：'+orderList[i].ftDate+'</div>'
			                    +'</div>'
			                    +'<div align="center" class="insurance_price font232323 font11em">'+orderList[i].ftAmount+'元'
			                    +'</div>'
			                    +'<div class="right_area" align="right">'
			                    +'<span class="db btn_right_arraw"></span>'
			                    +'</div>'
			                    +'</a>');
					};
					//需判断条数，若length=天数，则loadMore不做修改，且generatedCount++；
					//若length<天数，则loadMore = false  并将pullUp隐藏
					if(orderList.length === project.pageSize){
						generatedCount ++;
						loadMore = true;
					}else{
						loadMore = false;
						$("#pullUp").hide();
					}
					
					
				},
				error:function(data){
					
				}
			});	
		};//loadMore判断完成 
		myScroll.refresh();		// Remember to refresh when contents are loaded (ie: on ajax completion)
	}, 1000);	// <-- Simulate network congestion, remove setTimeout from production!
}

function iScrollLoaded() {
	pullUpEl = document.getElementById('pullUp');	
//	console.log(pullUpEl);
	
	myScroll = new iScroll('wrapper', {
		useTransition: true,
		vScrollbar: false,//隐藏垂直滚动条
//		topOffset: pullDownOffset,
		onRefresh: function () {
			//存在无pullUpEl的情况，所以需判断
			if(pullUpEl){
				if (pullUpEl.className.match('loading')) {
					pullUpEl.className = '';
					pullUpEl.querySelector('.pullUpLabel').innerHTML = '上拉加载更多';
				}
			}
			
		},
		onScrollMove: function () {
			//存在无pullUpEl的情况，所以需判断
			if(pullUpEl){
				pullUpOffset = pullUpEl.offsetHeight;
				if (this.y < (this.maxScrollY - 5) && !pullUpEl.className.match('flip')) {
					pullUpEl.className = 'flip';
					pullUpEl.querySelector('.pullUpLabel').innerHTML = '松手加载数据';
					this.maxScrollY = this.maxScrollY;
				} else if (this.y > (this.maxScrollY + 5) && pullUpEl.className.match('flip')) {
					pullUpEl.className = '';
					pullUpEl.querySelector('.pullUpLabel').innerHTML = '上拉加载更多';
					this.maxScrollY = pullUpOffset;
				}
			}
		},
		onScrollEnd: function () {
			//存在无pullUpEl的情况，所以需判断
			if(pullUpEl){
				if (pullUpEl.className.match('flip')) {
					pullUpEl.className = 'loading';
					pullUpEl.querySelector('.pullUpLabel').innerHTML = '加载中';	
					pullUpAction();	// Execute custom function (ajax call?)
				}
			}
		}
	});
	
	setTimeout(function () { document.getElementById('wrapper').style.left = '0'; }, 800);
}

document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);

document.addEventListener('DOMContentLoaded', function () { setTimeout(iScrollLoaded, 200); }, false);
