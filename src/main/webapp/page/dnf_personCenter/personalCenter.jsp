<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>个人中心</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/page/css/GRZX.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/head.css" />
	</head>
	<body style="overflow-y: hidden">
	<%--公用头部--%>
	<jsp:include page="../head.jsp"/>
    <!--图片 -->
    <div class="poster">
        <!--<img src="img/top.jpg"  height="100%"/>-->
    </div>
		<nav><a href="#" class="left home"><img src="${pageContext.request.contextPath}/page/img/list_posts/home.png"/></a>
			<em class="leftg">></em>
			<a href="#" class="left mrqd">设置</a><em class="leftg">></em><a href="#" class="left mrqd">个人中心</a>
		</nav>
		<section style="height: 600px">
			<div class="optionleft">
				<h3>设置</h3>
				<ul>
					<li class="oleftli">修改头像</li>
					<li class="oleftli lishow">个人资料</li>
					<li	class="oleftli">积分</li>
					<li	class="oleftli">用户组</li>
					<li	class="oleftli">隐私筛选</li>
					<li	class="oleftli">密码安全</li>
				</ul>
			</div>
			<div class="optionright">
				<div class="ZL ZL1 ">
					<%--上传新头像   action="${pageContext.request.contextPath}/uploadHeadphoto"--%>
					<form  method="POST" name="uploadimg" id="uploadimg"  enctype="multipart/form-data">
						<table style="margin-top: 20px">
							<%--width=-1 height=-1--%>
							<tr>
								<td><h2 style="color: #666666">修改头像</h2></td>
							</tr>
							<tr>
								<td colspan="2">
									<div id="localImag">
										<img id="preview"  style="margin-top:30px;margin-bottom:30px;width:120px;height:120px;diplay:none;border-radius: 50%;border: 2px solid #c8c8cd;" src="${pageContext.request.contextPath}/page/img/avatar/${sessionScope.user.headphoto}"/>
									</div>
								</td>
							</tr>
							<tr>
								<td>头像图片上传：</td>
								<td><input type=file name="myfiles" id="doc" onchange="showImage();">
								</td>
							</tr>
							<tr>
								<td>
									<button style="height: 30px;width: 50px;" >提交</button>
								</td>
								<td>
									<span style="color: #2BC06A;">${requestScope.updateMsg}</span>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<div class="ZL divshow ">
					<h2 style="color: #8f8f8f">基本资料</h2>
				<%--action="../../updUserInfo"--%>
				<form  method="post" id ="userinfoform">
					<input name = "uid" id = "uid" type="hidden" />
				<table>
					<tr><th >用户名</th><td>${sessionScope.user.nickname}</td></tr>
					<tr><th>真实姓名</th><td style="width: 600px;">
						<input type="text" name="realname" id="realname"  /><span style="margin-left: 10px;font-size: 14px;color: red;"></span></td><td>
							<select name="">
							<option value="">保密</option>
							<option value="">好友可见</option>
							<option value="">公开</option>
							</select></td></tr>
					<tr><th>身份证号码</th><td>
						<input type="text" name="IDcard" id="IDcard"  /><span style="margin-left: 10px;font-size: 14px;color: red;"></span></td><td>
							<select name="">
							<option value="">保密</option>
							<option value="">好友可见</option>
							<option value="">公开</option>
							</select></td></tr>
					<tr><th>擅长职业</th><td><select name="myprofession">
						<option value="null" id="myprofession">(无)</option>
						<option value="征战者">征战者</option>
						<option value="决战者">决战者</option>
						<option value="鬼泣">鬼泣</option>
						<option value="狂战士">狂战士</option>
						<option value="阿修罗">阿修罗</option>
						<option value="驭剑士">驭剑士</option>
						<option value="暗殿骑士">暗殿骑士</option>
						<option value="契魔者">契魔者</option>
						<option value="流浪武士">流浪武士</option>
						<option value="漫游枪手">漫游枪手</option>
					</select>
						</td><td>
						<select name="">
							<option value="">公开</option>
							<option value="">好友可见</option>
							<option value="">保密</option>
						</select></td></tr>
					<tr><th>安全问题</th><td><input type="text" name="safeissue" id="safeissue" /></td><td><select name="">
						<option value="">公开</option>
						<option value="">好友可见</option>
						<option value="">保密</option>
					</select></td></tr>
					<tr><th>密保答案</th><td><input type="text" name="answer" id="answer" /></td><td><select name="">
						<option value="">公开</option>
						<option value="">好友可见</option>
						<option value="">保密</option>
					</select></td></tr>
					<tr><td></td><td>
						<button id="savebtn" style="cursor: pointer" > 保存</button></td></tr>
				</table>
				</form>
				</div>
				<div class="ZL ZL3 ">
					<ul>
						<li>我的积分</li>
						<li>积分记录</li>
						<li>积分规则</li>				
					</ul>
					<hr />
					<div class="JFnr">
						<table >
							<tr><td>金币数：0</td></tr>
							<tr><td>魅力值：0</td><td>疲劳值：0</td><td>黑历史：0</td><td>额外经验：0</td></tr>
							<tr><td>代金币：0</td><td>粉丝币：0</td></tr>
							<tr><td colspan="4">经验值: 0 <span>( 总积分= 主题数X5 + 发帖数 + 额外经验 + 疲劳值X50 + 魅力值X5 - 黑历史X500 + 精华帖数 X500 )</span></td></tr>
						</table>
						<hr />
						<p>积分记录<a href="#">查看更多>></a></p>
						<p class="jlnav"><span >操作 </span>	<span>积分变更</span> 	
							<span>详情</span><span>变更时间</span></p>
					</div>
					<div class="jfcontain">
						<p>目前没有积分交易记录</p>
					</div>
				</div>
				<div class="ZL ZL4  ">
					<div class="ZL4-contain">
						<div class="ZL4ctop">
							<ul class="ZL4ctl">
							<li class="zhubtn">我的用户组</li>
							<li class="zhubtn">购买用户组</li>
							<li class="zhubtn">我的论坛权限</li>
							</ul>
						</div>
						<hr />
						<div class=" ZL4tables0">
							<table> <!--border="1" cellspacing="0" cellpadding="0"-->
								<tr><th style="width: 156px;"></th><th style="width: 394px;">我的主用户组 - 无色小晶体</th><th style="width: 450px; ,height: 38px;" >晋级用户组 - 普通</th></tr>
								<tr><td>访问论坛</td><td>经验值: 0</td><td>您升级到此用户组还需积分 15</td></tr>
								<tr><td>阅读权限</td><td>10</td><td>10</td></tr>
								<tr><td>隐身</td><td><img src="../img/tool/data_invalid.gif"/></td><td><img src="img/data_invalid.gif"/></td></tr>
								<tr><td>使用搜索</td><td>禁用搜索</td><td>禁用搜索</td></tr>
								<tr><td>自定义头衔</td><td><img src="../img/tool/data_invalid.gif"/></td><td><img src="img/data_invalid.gif"/></td></tr>
								<tr><td>发帖不受限制</td><td><img src="../img/tool/data_invalid.gif"/></td><td><img src="img/data_valid.gif"/></td></tr>
							</table>
						</div>
						<div class="ZL4tables1">
							<h6> <p class="zhubtncontain ZL4tb2left">当前用户组:    无色小晶体</p>	<p class="ZL4tb2right">您目前有:<span> 0 金币数</span></p>  </h6>
							<hr /><br /><br />
							<p>抱歉！本站尚未开通可供购买的用户组</p>
						</div>
						<div class="ZL4tables2">
							<table border="1px solid gray" cellspacing="0" cellpadding="0">
								<tr><th style="width: 285px;">版块名称</th><td>浏览版块</td><td>发新话题	</td>
									<td>发表回复</td><td>下载附件</td><td>上传附件</td><td>	上传图片</td></tr>
								<tr><td>广播专版</td><td><img src="${pageContext.request.contextPath}/page/img/tool/data_valid.gif"/></td>
									<td><img src="${pageContext.request.contextPath}/page/img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
								</tr>
								<tr><td>游戏讨论</td><td><img src="img/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
								</tr>
								
								<tr><td>综合讨论</td><td><img src="img/data_valid.gif"/></td>
									<td><img src="${pageContext.request.contextPath}/page/img/data_valid.gif"/></td>
									<td><img src="${pageContext.request.contextPath}/page/img/data_valid.gif"/></td>
									<td><img src="${pageContext.request.contextPath}/page/img/data_valid.gif"/></td>
									<td><img src="${pageContext.request.contextPath}/page/img/data_valid.gif"/></td>
									<td><img src="${pageContext.request.contextPath}/page/img/tool/data_valid.gif"/></td>
								</tr>
								
								<tr><td>职业圈</td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
								</tr>
								<tr><td>中医馆</td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_invalid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_invalid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
								</tr>
								<tr><td>体验服</td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
								</tr>
								<tr><td>客服·BUG＆服务器</td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
								</tr>
								<tr><td>TP安全复查</td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
								</tr>
								<tr><td>论坛快讯·最新资讯</td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
									<td><img src="../img/tool/data_valid.gif"/></td>
								</tr>
								<tr><td>赛丽亚的小黑屋</td>
									<td><img src="img/data_invalid.gif"/></td>
									<td><img src="img/data_invalid.gif"/></td>
									<td><img src="img/data_invalid.gif"/></td>
									<td><img src="img/data_invalid.gif"/></td>
									<td><img src="img/data_invalid.gif"/></td>
									<td><img src="img/data_invalid.gif"/></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="toutiao">
								<div class="xx1 toutiaoxx">
									<h4>站点管理组▼</h4>
									<div class="toutiaoshow">
										<ul>
											<li>管理员</li>
											<li>版主管理</li>
											<li>玩家版主</li>
											<li>网站编辑</li>
											<li>信息监察员</li>
											<li>审核员</li>
											<li>官方写手</li>
											<li>官方策划</li>
											<li>TP安全</li>
											<li>设计师</li>
											<li>副管理员</li>
											<li>官方客服</li>
											<li>实习写手</li>
										</ul>
									</div>
								</div>
								
								<div class="xx2 toutiaoxx">
									<h4>普通用户组▼</h4>
									<div class="toutiaoshow">
										<ul>
											<li>禁止发言</li>
											<li>禁止访问</li>
											<li>禁止ip</li>
											<li>游客</li>
											<li>QQ会员</li>
											<li>QQ游客</li>
											<li>荣誉会员</li>
											<li>赛利亚的朋友</li>
											<li>跨1卢克首杀大佬</li>
											<li>跨2卢克首杀大佬</li>
											<li>跨3卢克首杀大佬</li>
											<li>跨4卢克首杀大佬</li>
										</ul>
									</div>
								</div>
								
								<div class="xx3 toutiaoxx">
									<h4>晋级用户组▼</h4>
									<div class="toutiaoshow">
										<ul>
											<li>赖皮小人</li>
											<li>无色小晶体</li>
											<li>禁止ip</li>
											<li>普通</li>
											<li>高级</li>
											<li>稀有</li>
											<li>神器</li>
											<li>勇者</li>
											<li>传说</li>
											<li>史诗</li>
											<li>师徒</li>
										</ul>
									</div>
								</div>
								
								<div class="xx4 toutiaoxx">
									<h4>我的用户组▼</h4>
									<div class="toutiaoshow">
										<ul>
											<li>无色小晶体</li>
										</ul>
									</div>
								</div>
							</div>
				</div>
				<div class="ZL ZL5  ">
					<h5>个人隐私</h5>
					<hr />
					<p class="">您可以完全控制哪些人可以看到您的主页上面的内容</p>
					<form action="" method="post">
						<br /><br />
						好友列表              <select name="" value="保密">
							<option value="">保密</option>
							<option value="">好友可见</option>
							<option value="">公开</option>
							<option value="">仅注册用户可见</option>
						</select><br />						
						<input type="submit" value="保存" class="save"/>
					</form>
				</div>
				<div class="ZL ZL6 ">
					<img src="img/check_error.gif"/><p>本功能暂未开放</p>
				</div>
			</div>
		</section>
	<div style="clear: both;"></div>
    <%--公用页脚--%>
    <jsp:include page="../footer.jsp"/>
		
		
		<script src="${pageContext.request.contextPath}/page/js/jquery-1.8.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/page/js/GRZX-.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/page/js/notic.js" ></script>

	<%--上传头像显示--%>
	<script type="text/javascript">
        function showImage() {
            var docObj = document.getElementById("doc");
            var imgObjPreview = document.getElementById("preview");
            if (docObj.files && docObj.files[0]) {
                //火狐下，直接设img属性
                imgObjPreview.style.display = 'block';
                imgObjPreview.style.width = '120px';
                imgObjPreview.style.height = '120px';
                //imgObjPreview.src = docObj.files[0].getAsDataURL();
                //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
                imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
            } else {
                //IE下，使用滤镜
                docObj.select();
                var imgSrc = document.selection.createRange().text;
                var localImagId = document.getElementById("localImag");
                //必须设置初始大小
                localImagId.style.width = "250px";
                localImagId.style.height = "200px";
                //图片异常的捕捉，防止用户修改后缀来伪造图片
                try {
                    localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    localImagId.filters
                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                } catch (e) {
                    alert("您上传的图片格式不正确，请重新选择!");
                    return false;
                }
                imgObjPreview.style.display = 'none';
                document.selection.empty();
            }
            return true;
        }
        
        $(function () {
            var uid = ${sessionScope.user.uid};
            var URL = "${pageContext.request.contextPath}/showUserInfo?uid="+uid;
			//页面加载完成后  异步加载用户数据
            $.ajax({
                async:true,
                type:"POST",
                dataType:"json",
                url:URL,
                success:function (data){
                    $("#realname").val(data.realname);
                    $("#IDcard").val(data.IDcard);
                    $("#myprofession").html(data.profession);
                    $("#myprofession").val(data.profession);
                    $("#safeissue").val(data.safeissue);
                    $("#answer").val(data.answer);
                    $("#uid").val(data.uid);
                }
            });
        });

        $("#userinfoform").submit(function () {
            submitData();
        });


        function submitData() {
            $.ajax({
                url:'${pageContext.request.contextPath}/updUserInfo',
                type:"post",
                dataType:"text",
                async: false,
                data:$('#userinfoform').serialize(),
                success:function(data){
                    alert(data);
                },
                error:function(e){
                    alert("保存失败！");
                }
            });
        }

        $("#uploadimg").submit(function () {
            fileUpload();
        });

        function fileUpload(){
            var form = new FormData(document.getElementById("uploadimg"));
            $.ajax({
                url:'${pageContext.request.contextPath}/uploadHeadphoto',
                type:"post",
                dataType:"text",
                data:form,
                async: false,
                processData:false,
                contentType:false,
                success:function(data){
                    alert(data);
                },
                error:function(e){
					alert("修改头像失败！");
                }
            });
		}


	</script>

	</body>
</html>
