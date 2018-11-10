<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>

		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/head.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/comment.css" />
		<!-- 文本编辑器 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/assets/design/css/trumbowyg.css">

	</head>
	<body style="overflow-y: hidden">
	<%--公用头部--%>
	<jsp:include page="head.jsp"/>
    <!--图片 -->
    <div class="poster">
        <!--<img src="img/top.jpg"  height="100%"/>-->
    </div>
		<div class="nav_underPoster">
			<div class="nav_content">
				<ul id="nav">
					<li>
						<img src="${pageContext.request.contextPath}/page/img/list_posts/home.png" />
					</li>
					<li>
						<em>></em>
					</li>
					<li>
						论坛
					</li>

					<li>
						<em>></em>
					</li>
					
					<li>
						${requestScope.themepostmaps["typename"]}
					</li>

					<li>
						<em>></em>
					</li>
					
					<li>
						${requestScope.themepostmaps["themename"]}
					</li>

					<li>
						<em>></em>
					</li>
					<li>
						${requestScope.themepostmaps["themePost"].title}
					</li>

				</ul>
			</div>
		</div>
	<section>
		<div class="section_left clearfix">
			<ul class="comment_content clearfix">
				<li>
					<div class="comment_content_left">
						<img src="${pageContext.request.contextPath}/page/img/avatar/${requestScope.themepostmaps["user"].headphoto}" style="width: 100px;height: 100px;border-radius: 50%;">
						<div id="userLV" style="background: url(${pageContext.request.contextPath}/page/img/star/${requestScope.themepostmaps["authorProperty"].credit}.png) no-repeat;"></div>
						<div class="userName">${requestScope.themepostmaps["user"].nickname}</div>
						<div class="userLV_Show">
							<em>LV.${requestScope.themepostmaps["user"].ulevel}</em>
							<em>
								<c:choose>
									<c:when test="${requestScope.themepostmaps['user'].ulevel eq 0}">无色小晶体</c:when>
									<c:when test="${requestScope.themepostmaps['user'].ulevel eq 1}">普通</c:when>
									<c:when test="${requestScope.themepostmaps['user'].ulevel eq 2}">高级</c:when>
									<c:when test="${requestScope.themepostmaps['user'].ulevel eq 3}">稀有</c:when>
									<c:when test="${requestScope.themepostmaps['user'].ulevel eq 4}">神器</c:when>
									<c:when test="${requestScope.themepostmaps['user'].ulevel eq 5}">勇者</c:when>
									<c:when test="${requestScope.themepostmaps['user'].ulevel eq 6}">传说</c:when>
									<c:when test="${requestScope.themepostmaps['user'].ulevel eq 7}">史诗</c:when>
									<c:when test="${requestScope.themepostmaps['user'].ulevel eq 8}">使徒</c:when>
								</c:choose>
							</em>
							<div id="ex">
								<span id="exIn" style="width: ${requestScope.themepostmaps['authorProperty'].EXP}%;"></span>
							</div>
						</div>
						<div class="userInfo clearfix">
							<div class="userInfo_threetoone">
								<p>${requestScope.themepostmaps['authorThemePosts']}</p>
								<em>主题</em>
							</div>
							<div class="userInfo_threetoone">
								<p>${requestScope.themepostmaps['authorReplyPosts']}</p>
								<em>帖子</em>
							</div>
							<div class="userInfo_threetoone">
								<p>${requestScope.themepostmaps["authorProperty"].EXP}</p>
								<em>经验值</em>
							</div>
							<div class="userbedge">
								<img src="${pageContext.request.contextPath}/page/img/access/${requestScope.themepostmaps['user'].ulevel}.gif" />
							</div>
							
							<div class="userSign">
								${requestScope.themepostmaps["user"].signature}
							</div>
							<div style="margin: 0 0 20px -15px; width: 170px;" class="clearfix">
								<a href="${pageContext.request.contextPath}/showbadge">
									<c:forEach items="${requestScope.themepostmaps['badges']}" var="badge" begin="1" end="6">
										<img src="${pageContext.request.contextPath}/page/img/badge/${badge.badgeurl}" title="${badge.badgeinfo}">
									</c:forEach>
								</a>
							</div>
						</div>
						
					</div>
					<div class="comment_content_right">
						<div class="comment_content_right_content">
							
							<ul>
								<li>
									    <p style="color: #444; font: 700 16px 'Microsoft Yahei','Hei',Tahoma,'SimHei',sans-serif;">
                                        [${requestScope.themepostmaps["typename"]}]
										${requestScope.themepostmaps["themePost"].title}
										</p>
								
								</li>
								<li>
									<ol>
										<li>
											<img src="${pageContext.request.contextPath}/page/img/list_posts/ico_lz.png" />
										</li>
										<li>
											楼主<span>|</span>
										</li>
										<li style="color: #777;">
											发表于${requestScope.themepostmaps["themePost"].postingtime}
										</li>
										<li>
											<img src="${pageContext.request.contextPath}/page/img/list_posts/mobile.png" />
										</li>
										<li>
											来自于手机端发布<span>|</span>
										</li>
										<li style="color: #777;" id="seelz">
											只看该作者<span>|</span>
											<a id="seelzdesc">倒序浏览<span>|</span></a>
										</li>

										<li style="color: #777;">
											[复制链接]
										</li>
										<li>
											<span>直达</span>
											<input type="text" />
											<img  src="${pageContext.request.contextPath}/page/img/list_posts/fj_btn.png"/>
										</li>
									</ol>
								</li>
								
								<li>
									<div class="article" style="font: 14px/1.5 Tahoma,'Microsoft Yahei','Simsun';color: #444;">
										${requestScope.themepostmaps["themePost"].content}
									</div>
								</li>
							</ul>
							<div class="article_under">
								<a class="callPlan">召唤策划</a>
								<a class="handleCard">帖子操作</a>
							</div>
						</div>
					</div>
				</li>

				<c:forEach items="${requestScope.replymaps}" var="reply" varStatus="status">
					<li style="    background: white; min-height: 565px;">
						<div class="comment_content_left">
							<img src="${pageContext.request.contextPath}/page/img/avatar/${reply["replyuser"].headphoto}" style="width: 100px;height: 100px;border-radius: 50%;">
							<div id="userLV" style="background: url(${pageContext.request.contextPath}/page/img/star/${reply["userProperty"].credit}.png) no-repeat;"></div>
							<div class="userName">${reply["replyuser"].nickname}</div>
							<div class="userLV_Show">
								<em>LV.${reply["replyuser"].ulevel}</em>
								<em>
									<c:choose>
										<c:when test="${reply['replyuser'].ulevel eq 0}">无色小晶体</c:when>
										<c:when test="${reply['replyuser'].ulevel eq 1}">普通</c:when>
										<c:when test="${reply['replyuser'].ulevel eq 2}">高级</c:when>
										<c:when test="${reply['replyuser'].ulevel eq 3}">稀有</c:when>
										<c:when test="${reply['replyuser'].ulevel eq 4}">神器</c:when>
										<c:when test="${reply['replyuser'].ulevel eq 5}">勇者</c:when>
										<c:when test="${reply['replyuser'].ulevel eq 6}">传说</c:when>
										<c:when test="${reply['replyuser'].ulevel eq 7}">史诗</c:when>
										<c:when test="${reply['replyuser'].ulevel eq 8}">使徒</c:when>
									</c:choose>
								</em>
								<div id="ex">
									<span id="exIn" style="width: ${reply['userProperty'].EXP}%;"></span>
								</div>
							</div>
							<div class="userInfo clearfix">
								<div class="userInfo_threetoone">
									<p>${reply['userThemePosts']}</p>
									<em>主题</em>
								</div>
								<div class="userInfo_threetoone">
									<p>${reply['userReplyPosts']}</p>
									<em>帖子</em>
								</div>
								<div class="userInfo_threetoone">
									<p>${reply['userProperty'].EXP}</p>
									<em>经验值</em>
								</div>
								<div class="userbedge">
									<img src="${pageContext.request.contextPath}/page/img/access/${reply['replyuser'].ulevel}.gif" />
								</div>

								<div class="userSign">
									${reply['replyuser'].signature}
								</div>
								<%--用户徽章展示--%>
								<div style="margin: 0 0 20px -15px; width: 170px;" class="clearfix">
									<a href="${pageContext.request.contextPath}/showbadge">
										<c:forEach items="${reply['userbadges']}" var="badge" begin="0" end="5">
											<img src="${pageContext.request.contextPath}/page/img/badge/${badge.badgeurl}" title="${badge.badgeinfo}">
										</c:forEach>
									</a>
								</div>
							</div>

						</div>
						<div class="comment_content_right">
							<div class="comment_content_right_content">
								<div class="reply">
									<div class="reply_head">
										<ul>
											<li>
												<img src="${pageContext.request.contextPath}/page/img/post_add/online_member.png" />
											</li>
											<li>
												发表于 ${reply['replypost'].replytime}<span>|</span>
											</li>
											<li>
												只看该作者<span>|</span>
											</li>
											<li>
												【复制链接】
											</li>
											<li>
												#${status.count+1}楼
											</li>
										</ul>
									</div>
									<div class="reply_content">
										<c:if test="${not empty reply['to_replypost']}">
											<div style=" margin-bottom: 15px; padding-bottom: 5px;width: 100% ; min-height: 50px; background: #F9F9F9 url(${pageContext.request.contextPath}/page/img/tool/icon_quote_s.gif) no-repeat 20px 6px;">
												<blockquote style="    display: inline-block;margin: 0; padding: 0 330px 20px 70px;background: url(${pageContext.request.contextPath}/page/img/tool/icon_quote_e.gif) no-repeat 100% 100%;line-height: 1.6;"><font size="2">
													<a href="" target="_blank">
														<font color="#999999"> ${reply['to_user'].nickname} 发表于 ${reply['to_replypost'].replytime}</font>
													</a></font><br>
													${reply['to_replypost'].content}
												</blockquote>
											</div>
										</c:if>
											${reply['replypost'].content}
									</div>
								</div>
							</div>




							<div class="comment_content_right_under">
								<a class="reply_show">回复</a>
								<a>评分</a>
								<a>举报</a>
							</div>

						</div>
					</li>
				</c:forEach>



				<%--<li >
					<div class="comment_content_left">
						<img src="img/touxiang5.gif" style="width: 100px;height: 100px;border-radius: 50%;">
						<div id="userLV"></div>
						<div class="userName">蔡仁浩</div>
						<div class="userLV_Show">
							<em>LV.1</em>
							<em>普通</em>
							<div id="ex">
								<span id="exIn"></span>
							</div>
						</div>
						<div class="userInfo clearfix">
							<div class="userInfo_threetoone">
								<p>589</p>
								<em>主题</em>
							</div>
							<div class="userInfo_threetoone">
								<p>3759</p>
								<em>帖子</em>
							</div>
							<div class="userInfo_threetoone">
								<p>5000</p>
								<em>经验值</em>
							</div>
							<div class="userbedge">
								<img src="img/access/2.gif" />
							</div>
							
							<div class="userSign">
								谁送我个女朋友？
							</div>
						</div>
						
					</div>


					<div class="comment_content_right">
						<div class="comment_content_right_content">
							<div class="reply">
								<div class="reply_head">
									<ul>
										<li>
											<img src="img/list_posts/online_member.png" />
										</li>
										<li>
											发表于 半小时之前<span>|</span>
										</li>
										<li>
											只看该作者<span>|</span>
										</li>
										<li>
											【复制链接】
										</li>
										<li>
											#2楼
										</li>
									</ul>
								</div>
								<div class="reply_content">
									勇士走好！
								</div>
								<!--回复层主-->
						<div class="replyCZ" >
							<table>
								<tr class="table_top">
									<td colspan="4">
										点评与评分
									</td>
								</tr>
								<tr>
									<td>
										评论用户
									</td>
									<td>
										内容
									</td>
									<td>
										时间
									</td>
									<td>
										操作
									</td>
								</tr>
								<tr>
									<td>
										<img src="img/touxiang3.gif" />
										<span>林杰平</span>
									</td>
									<td>
											你咋这么肯定啊
									</td>
									<td>
											2018-9-9 20:09
									</td>
									<td>
										无
									</td>
								</tr>
								<tr>
									<td>
										<img src="img/touxiang3.gif" />
										<span>林杰平</span>
									</td>
									<td>
											你咋这么肯定啊
									</td>
									<td>
											2018-9-9 20:09
									</td>
									<td>
										无
									</td>
								</tr>
								<tr>
									<td>
										<img src="img/touxiang3.gif" />
										<span>林杰平</span>
									</td>
									<td>
											你咋这么肯定啊
									</td>
									<td>
											2018-9-9 20:09
									</td>
									<td>
										无
									</td>
								</tr>
								<tr>
									<td>
										<img src="img/touxiang3.gif" />
										<span>林伟杰</span>
									</td>
									<td>
											你咋这么肯定啊
									</td>
									<td>
											2018-9-9 20:09
									</td>
									<td>
										无
									</td>
								</tr>
									<tr>
									<td>
										<img src="img/touxiang3.gif" />
										<span>林杰平</span>
									</td>
									<td>
											你咋这么肯定啊
									</td>
									<td>
											2018-9-9 20:09
									</td>
									<td>
										无
									</td>
								</tr>
							</table>
						</div>
							</div>
							
						</div>
						
						<div class="comment_content_right_under">
							<a class="reply_show">回复</a>
							<a>评分</a>
							<a>举报</a>
						</div>
						
					</div>
				</li>--%>


				

			</ul>
			
			<div class="page">
				<div class="next-page">
					<a href="#" >下一页 >></a>
				</div>
				<div class="choose-page">
					<ul>
						<li><a href="#">发新贴</a></li>
						<li><a href="#">返回列表</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">...31</a></li>
						<li><a href="#">下一页</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div style="position: relative; top: 50px; left: -115px;margin-bottom: 115px;border-radius:5px;background: white;margin-left: 115px;height: 479px;width: 800px;padding: 30px 30px 10px 30px ">
			<c:if test="${ empty sessionScope.user}">
            <span style="display: block;padding: 30px 50px; border: 3px solid #b9bbba;border-radius: 5px;    text-align: center;    color: #999;">
                请先<a href="${pageContext.request.contextPath}/page/login.jsp" style="color: #0087e0;margin: 0 5px;">登录</a>再发帖
            </span>
			</c:if>
			<c:if test="${not empty sessionScope.user}">
				<form action="reply" method="post" >
					<a class="avar" href="${pageContext.request.contextPath}/page/dnf_personCenter/personalCenter.jsp" target="_blank">
						<img src="${pageContext.request.contextPath}/page/img/avatar/${sessionScope.user.headphoto}" style="float: left;position: relative;top: -20px;left: 8px;"/>
					</a>

					<div id="odiv" style="display:none;position:absolute;z-index:100;">
						<img src="${pageContext.request.contextPath}/page/assets/pic/sx.png" title="缩小" border="0" alt="缩小" onclick="sub(-1);"/>
						<img src="${pageContext.request.contextPath}/page/assets/pic/fd.png" title="放大" border="0" alt="放大" onclick="sub(1)"/>
						<img src="${pageContext.request.contextPath}/page/assets/pic/cz.png" title="重置" border="0" alt="重置" onclick="sub(0)"/>
						<img src="${pageContext.request.contextPath}/page/assets/pic/sc.png" title="删除" border="0" alt="删除" onclick="del();odiv.style.display='none';"/>
					</div>
					<div  onmousedown="show_element(event)" style="clear:both" id="customized-buttonpane" class="editor" name="editor"></div>
					<input type="text" value="${sessionScope.user.uid}" name="uid" style="display: none">
					<input type="text" value="${requestScope.themepostmaps["themePost"].pid}" name="pid" style="display: none"/>
					<span style="color: #2BC06A">${requestScope.postingMsg}</span>
					<input type="submit" value="发新帖" style="font-size:14px;float:right;margin-right:15px;display: block;height: 30px;border: 1px solid #D0D0D0;text-align: center;border-radius: 5px;line-height: 30px;width: 75px;padding: 0 15px;background: rgb(0, 135, 224); color: white;">
				</form>
			</c:if>
		</div>
		
		
		
		<div class="section_right crhadd">
			<div class="section_right_top">
				<div class="top_head">
					<ul class="clearfix">
						<li>
							<b>${requestScope.themepostmaps["themePostVisits"]}</b>
							<p>浏览</p>
						</li>
						<li>
							<b>${requestScope.themepostmaps["replyPostCount"]}</b>
							<p>评论</p>
						</li>
						<li>
							<b>0%</b>
							<p>召唤策划</p>
						</li>
					</ul>
				</div>
				<div class="top_bottom">
					<ul>
						<li>召唤策划</li>
						<li>返回列表</li>
						<li>帖子操作</li>
						<li>管理工具</li>
					</ul>
				</div>
				
			</div>
			
			<div class="section_right_bottm">
				<div class="bottm_head">
					<span>热点速递</span>
					<ul class="clearfix">
						<li>热门</li>
						<li>活动</li>
						<li>攻略</li>
					</ul>
				</div>
				<!--热门 -->
				<div class="bottm_under">
					<ul>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述【热门】</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
					</ul>
				</div>
				
				<!--活动 -->
				<div class="bottm_under" style="display: none;">
					<ul>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述【活动】</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
					</ul>
				</div>
				
				<!--攻略 -->
				<div class="bottm_under" style="display: none;">
					<ul>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述【攻略】</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
						<li>
							<p>起源版本召唤师前瞻与起源新手法简述</p>
							<span>月翡</span>
							<label>2018-01-21</label>
							<i>2509</i>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
    <%--公用页脚--%>
    <jsp:include page="footer.jsp"/>
	</body>
	<script type="text/javascript" src="${pageContext.request.contextPath}/page/js/jquery-1.8.3.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/page/js/reply.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/page/js/notic.js" ></script>
	<%--编辑器--%>
	<script src="${pageContext.request.contextPath}/page/js/plug-in.js"></script>
	<script src="${pageContext.request.contextPath}/page/assets/trumbowyg.js"></script>
	<script src="${pageContext.request.contextPath}/page/assets/plugins/base64/trumbowyg.base64.js"></script>
</html>
