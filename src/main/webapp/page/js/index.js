$(function(){
	//点击左边button
	$(".Smalldiv div:nth-child(1) ul li ").click(function(){
		//console.log($(".Smalldiv div:nth-child(1) ul li").index())
			$(".Smalldiv div:nth-child(1) ul li").animate({backgroundColor:'#383635'},100);
			$(".Smalldiv div:nth-child(1) ul li").css("color","")
			$(".Smalldiv div:nth-child(1) ul li").css("font-weight","")
		//$(this).css("background-color","#ec380f")
		$(this).animate({backgroundColor:'#ec380f'},200);
		$(this).css("color","#383635")
		$(this).css("font-weight","bolder")
	})
	//右边获得焦点时
	$(".Smalldivdiv ul li").mouseover(function(){
		$(this).children("a:first-child").css("color","#ec380f");
	})
	//失去焦点时
	$(".Smalldivdiv ul li").mouseout(function(){
		$(this).children("a:first-child").css("color","");
	})
})
