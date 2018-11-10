$(function() {
	$(".header").hcSticky({
		stickTo: 'body'
	});
	$("#page").pagination({
		currentPage: 1, // 当前页数
		totalPage: 16, // 总页数
		isShow: false, // 是否显示首尾页
		count: 7, // 显示个数
		prevPageText: "上一页", // 上一页文本
		nextPageText: "下一页", // 下一页文本
		callback: function(current) {
			// 回调,current(当前页数)
		}
	});
	$(".header span:nth-child(2) a:nth-child(2)").mousemove(function(){
		$(".header span:nth-child(4)").attr("class","x");
	});
	$(".header span:nth-child(2) a:nth-child(2)").mouseleave(function(){
		$(".header span:nth-child(4)").attr("class","y");
	});
	
	$("#headerspan div").mousemove(function(){
		$(".header span:nth-child(4)").attr("class","x");
	})
	$("#headerspan div").mouseleave(function(){
		$(".header span:nth-child(4)").attr("class","y");
	})
	$("#headerspan div h1 ul li").mousemove(function(){
		if($(this).index()=="0"){
			$("#headerspan div ul:nth-child(2)").attr("class","headerUl1");
			$("#headerspan div ul:nth-child(3)").attr("class","headerUl2 y");
			$("#headerspan div ul:nth-child(4)").attr("class","headerUl3 y");
			$("#headerspan div ul:nth-child(5)").attr("class","headerUl4 y");
			$("#headerspan div ul:nth-child(6)").attr("class","headerUl5 y");
		}
		if($(this).index()=="1"){
			$("#headerspan div ul:nth-child(2)").attr("class","headerUl1 y");
			$("#headerspan div ul:nth-child(3)").attr("class","headerUl2 ");
			$("#headerspan div ul:nth-child(4)").attr("class","headerUl3 y");
			$("#headerspan div ul:nth-child(5)").attr("class","headerUl4 y");
			$("#headerspan div ul:nth-child(6)").attr("class","headerUl5 y");
		}
		if($(this).index()=="2"){
			$("#headerspan div ul:nth-child(2)").attr("class","headerUl1 y");
			$("#headerspan div ul:nth-child(3)").attr("class","headerUl2 y");
			$("#headerspan div ul:nth-child(4)").attr("class","headerUl3 ");
			$("#headerspan div ul:nth-child(5)").attr("class","headerUl4 y");
			$("#headerspan div ul:nth-child(6)").attr("class","headerUl5 y");
		}
		if($(this).index()=="3"){
			$("#headerspan div ul:nth-child(2)").attr("class","headerUl1 y");
			$("#headerspan div ul:nth-child(3)").attr("class","headerUl2 y");
			$("#headerspan div ul:nth-child(4)").attr("class","headerUl3 y");
			$("#headerspan div ul:nth-child(5)").attr("class","headerUl4 ");
			$("#headerspan div ul:nth-child(6)").attr("class","headerUl5 y");
		}
		if($(this).index()=="4"){
			$("#headerspan div ul:nth-child(2)").attr("class","headerUl1 y");
			$("#headerspan div ul:nth-child(3)").attr("class","headerUl2 y");
			$("#headerspan div ul:nth-child(4)").attr("class","headerUl3 y");
			$("#headerspan div ul:nth-child(5)").attr("class","headerUl4 y");
			$("#headerspan div ul:nth-child(6)").attr("class","headerUl5 ");
		}
		
	});
});