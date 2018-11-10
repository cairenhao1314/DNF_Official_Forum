//获取公告头部的a标签
var $a=$("section .notic .notic-head a");
//下标
var index = 0;
//获取div
$a_div_notice =$("section .notic .notic-content");

$a.mouseover(function(){
	$(this).css("color","rgb(0,135,224)").siblings().css("color","rgb(91,91,91)");
	$a_div_notice.eq($(this).index()).fadeIn("slow").siblings().hide();
});

//改变字体颜色
$(".service_left-bottom1").hover(function(){
	$(".service_left-bottom1 span").css("color","#4f0026");
},function(){
	$(".service_left-bottom1 span").css("color","rgb(255,218,157)");
});


//切换页面的切换
$(".changePlate_left a").mouseover(function(){
	$(".top_boxs").eq($(this).index()).show().siblings().hide();
});

/*
//看楼主
$("#seelz").mouseenter(function(){
	$("#seelzdesc").show();
});

$("#seelzdesc").mouseleave(function(){
	$(this).hide();
});
*/


