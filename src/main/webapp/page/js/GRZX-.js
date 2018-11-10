//表单校验
$(document).ready(function(){
	$(".oleftli").click(function(){
		$(this).addClass("lishow").siblings().removeClass("lishow");
		var  diliindex=$(this).index();	
		$(".ZL").eq(diliindex).css("display","block");
		$(".ZL").eq(diliindex).siblings().css("display","none");
		
//		$(".cotain").eq(xiabiao1).addClass("sortcoshow");
//		$(".cotain").eq(xiabiao1).siblings().removeClass("sortcoshow");
	})
	
	var idreg=/^[0-9]{18}$/;
	var tijiao=false;
	function checkname(){
		var user=document.getElementById("realname");
		var userval=user.value;
		var span=user.nextElementSibling;
		if(userval.trim().length==0){
			span.innerText="名字不能为空";
			tijiao=false;
		}else{
			span.innerText="";
			tijiao=true;
		}
	}
	document.getElementById("realname").onblur=function(){
		checkname()
	}
	
	function checkid(){
		var id=document.getElementById("IDcard");
		var idval=id.value;
		var span=id.nextElementSibling;
		if(idval.trim().length==0){
			span.innerText="请输入身份证号码";
			tijiao=false;
		}else{
			span.innerText="";
			tijiao=true;
		}
	}
	
	document.getElementById("IDcard").onblur=function(){
		checkid();
	}

	
	$(".toutiaoxx").hover(function(){
		var index=$(this).index();
		$(".toutiaoshow").eq(index).slideDown(100);
	},
		function(){
			$(".toutiaoshow").slideUp(100);
		}
	)
	
	$(".zhubtn").click(function(){
		$(".zhubtn").eq($(this).index()).css("background","cornflowerblue").siblings().css("background","darkgray");
		
		 var end=".ZL4tables"+$(this).index();
		// alert(end);
         $(end).show().siblings(":not(:first-child)").hide();
         $(".ZL4-contain hr").show();
	})
	
})

