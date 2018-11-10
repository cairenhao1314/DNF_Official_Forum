<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/注册02.css" />
		<script type="text/javascript" src="js/注册.js"></script>
	</head>
    <!--图片 -->
    <div class="poster">
        <!--<img src="img/top.jpg"  height="100%"/>-->
    </div>
	<body>
		<div class="main">
			<div class="left">
				<div class="logo">
					<a>QQ</a>
				</div>
				<div class="left_img">
					<ul class=" clearfix">
						<li><img src="${pageContext.request.contextPath}/page/img/register/01-1.jpg" /></li>
						<li><img src="${pageContext.request.contextPath}/page/img/register/01-2.jpg" /></li>
						<li><img src="${pageContext.request.contextPath}/page/img/register/01-3.jpg" /></li>
					</ul>
				</div>
			</div>

			<div class="right">
				<div class="r_top">
					<div class="r_fk">
						<a href="#">意见反馈</a>
					</div>

					<div class="r_zw">
						<div class="r_zwxl">
							<a href="#">简体中文</a>
							<img src="${pageContext.request.contextPath}/page/img/tool/down.png" />
							<div class="zwxl">
								<ul>
									<li>繁體中文</li>
									<li>English</li>
								</ul>
							</div>
						</div>

					</div>

					<div class="r_zh">
						<img src="${pageContext.request.contextPath}/page/img/tool/mail-entry.png" />
						<a href="#">邮箱账号</a>
					</div>

					<div class="r_lhxl">

						<div class="r_lh">
							<a href="#" id="lh">
								<div>QQ靓号</div><img src="${pageContext.request.contextPath}/page/img/tool/logo3.png" /></a>
							<div class="sou">
								<input type="text" name="search" placeholder="搜索QQ靓号，如'1992','520'" />
								<img src="${pageContext.request.contextPath}/page/img/tool/search.png" />
								<a href="#">生日</a>
								<a href="#">星座</a>
								<a href="#">爱情</a>
								<a href="#">手机</a>
							</div>
						</div>
					</div>

				</div>

				<!--
                    	作者：2206303081@qq.com
                    	时间：2018-09-16
                    	描述：右边中间部分
                    -->
				<div class="centern">
					<div class="c_wel">
						<div class="welcome">欢迎注册QQ</div>
						<a href="#">免费靓号</a>
						<div class="c_p">每一天，乐在沟通。</div>
					</div>

					<div class="form">
						<form action="../register" method="post">
							<input type="text" id="user" name="user" placeholder="昵称" id="unme" />
							<span id="renameMsg" class="sel_txt" ></span>
							<%--	<div class="usr_txt">*昵称不可以为空</div>--%>
							<input type="text" name="pwd" placeholder="密码" />
							<%--<div class="pwd_txt">*密码不能为空</div>--%>
							<input type="text" name="select" placeholder="+86" />
							<input type="text" id="phone" name="phone" placeholder="手机号码" />
							<span class="sel_txt">可通过该手机号找回密码</span>
							<%-- 手机号码是否存在 --%>
							<span id="phoneMsg" class="sel_txt" style="margin-left:30px;"></span>

							<button type="submit">立即注册</button>
						</form>

						<div class="agreement">
							<div class="agree_top">
								<!--<img src="img/checkbox_check.png" id="img"/>-->
								<span>同时开通QQ空间</span>
							</div>
							<div class="agree_foot">
								<!--	<img src="img/checkbox_check.png" id="img"/>-->
								<span>我已阅读并同意相关服务条款和隐私政策</span>
							</div>
						</div>
					</div>
						
					<div class="foot">
						<span>Copyright © 1998-2018Tencent All Rights Reserved</span>
					</div>
				</div>

				
			</div>

		</div>

		<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
		<script>

			$("#phone").blur(function () {
				var phone = $("#phone").val();
				if(phone.trim()!=""){
                    $.ajax({
                        async:true,
                        type: "POST",
                        url: "../phoneExist",
                        data: {"phone":phone},
                        success: function(data){
                            $('#phoneMsg').empty();   //清空resText里面的所有内容
                            $('#phoneMsg').html(data);
                        }
                    })
				}else{
                    $('#phoneMsg').empty();   //清空resText里面的所有内容
                    $('#phoneMsg').html("手机不能为空！");
				}
            });
			
			$("#user").blur(function () {
				var nickname = $("#user").val();
                if(nickname.trim()!="") {

                    $.ajax({
                        async: true,
                        type: "POST",
                        url: "../rename",
                        data: {"user": nickname},
                        success: function (data) {
                            $('#renameMsg').empty();   //清空resText里面的所有内容
                            $('#renameMsg').html(data);
                        }
                    })
                }else{
                    $('#renameMsg').empty();   //清空resText里面的所有内容
                    $('#renameMsg').html("昵称不能为空！");
				}
            });

			$(function() {
				$(".left .left_img ul li:first-child").fadeIn().siblings().fadeOut();
				startMove();

				$("input[name='user']").click(function() {
					$(this).css("border", "1px solid #359eff");
					$(this).siblings().css("border", "1px solid gainsboro");
					$(".sel_txt").css("border", "none");

				});
				$("input[name='pwd']").click(function() {
					$(this).css("border", "1px solid #359eff");
					$(this).siblings().css("border", "1px solid gainsboro");
					$(".sel_txt").css("border", "none");
				});
				$("input[name='select']").click(function() {
					$(this).css("border", "1px solid #359eff");
					$(this).siblings().css("border", "1px solid gainsboro");
					$(".sel_txt").css("border", "none");
				});
				$("input[name='phone']").click(function() {
					$(this).css("border", "1px solid #359eff");
					$(this).siblings().css("border", "1px solid gainsboro");
					$(".sel_txt").css("border", "none");
				});

				var flag = 2;
				$(".agreement .agree_top").click(function() {
					if(flag % 2 == 0) {
						$(this).css("background", "url(img/checkbox_normal.png) no-repeat");
					} else {
						$(this).css("background", "url(img/checkbox_check.png) no-repeat");
					}
					flag++;
				});
				var flagr = 2;
				$(".agreement .agree_foot").click(function() {
					if(flagr % 2 == 0) {
						$(this).css("background", "url(img/checkbox_normal.png) no-repeat");
					} else {
						$(this).css("background", "url(img/checkbox_check.png) no-repeat");
					}
					flagr++;
				});

			});

			var index = 0;
			var timer = null;

			function startMove() {
				timer = setInterval(function() {
					index++;
					$(".left .left_img ul li").eq(index).fadeIn().siblings().fadeOut();
					if(index == 3) {
						index = -1;
					}
				}, 3000);
			}
			$(".r_lh").hover(
				function() {
					$(".sou").show();
					$("")
				},
				function() {
					$(".sou").hide();
				});

			$(".r_zwxl").hover(
				function() {
					$(".zwxl").show();
				},
				function() {
					$(".zwxl").hide();
				});
		</script>
	</body>

</html>