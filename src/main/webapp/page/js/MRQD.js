$(document).ready(function(){
//排行选项卡
$(".ph").click(function(){
		$(this).addClass("sortactive")
		$(this).siblings().removeClass("sortactive");
		var xiabiao1=$(this).index();
		$(".cotain").eq(xiabiao1).addClass("sortcoshow");
		$(".cotain").eq(xiabiao1).siblings().removeClass("sortcoshow");
})

//获奖滚动
 $(".ZZMD_LIST").RollTitle({line:1,speed:800,timespan:1});

});


	

