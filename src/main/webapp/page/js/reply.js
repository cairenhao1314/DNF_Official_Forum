
var $left=$(".comment_content_left");
/*alert($left.eq(0).height());*/
var $right=$(".comment_content_right");
/*alert($right.eq(0).height());*/

function Heightajust () {
	$.each($left, function(index,element) {
	var $ele=$(element);
	var h=$ele.height()>$right.eq(index).height()?$ele.height():$right.eq(index).height();
	alert(h);
	$ele.parent().css("height",h);
	$ele.css("height",h-30);
	
	});
}

$.each($left, function(index,element) {
	var $ele=$(element);
	if($right.eq(index).height()<$ele.height()){
		$right.eq(index).css("height","400px");
	}
	var h=$ele.height()>$right.eq(index).height()?$ele.height():$right.eq(index).height();
	//alert(h);
	$ele.parent().css("height",h);
	$ele.css("height",h-30);
	
});

//点击回复事件
$(".reply_show").click(function(){
	
});


$(".choose-page a").mouseenter(function(){
	$(".choose-page li:not(:first-child) a").css({"background":"white","color":"#666"});
	$(this).css({"background":"#0087e0","color":"white"});

});

var flag=false;
$(window).scroll(function(){
	if($(this).scrollTop()>=350){
		$(".section_right").css({
			"position":"fixed",
			"right":"0px",
			"top":"100px",
			"z-index":"0"
		});
		flag=true;
	}
	if(flag&&$(this).scrollTop()<350){
		$(".section_right").removeAttr("style");
	}

});

/*右边导航条的选项卡*/
$(".bottm_head li").mouseenter(function(){
	var index=$(this).index();
	$(".bottm_under").hide();
	$(".bottm_under").eq(index).fadeIn();
});
