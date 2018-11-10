<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>帖子列表</title>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/head.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/comment.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/list.css" />

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
						游戏讨论
					</li>

					<li>
						<em>></em>
					</li>
					
					<li>
						综合讨论
					</li>


				</ul>
			</div>
		</div>
		
	<section>
		<div class="list_left clearfix" >
			<table id="show_posts">
				<tr>
					<th>
						<select>
							<option>全部主题</option>
							<option>投票</option>
							<option>商品</option>
							<option>活动</option>
							<option>悬赏</option>
							<option>辩论</option>
						</select>
					</th>
					<th>
						<select>
							<option>全部类型</option>
							<option>申请复查</option>
							<option>无法复查</option>
							<option>已复核</option>
							<option>官方信息</option>
							<option>官方活动</option>
							<option>论坛活动</option>
						</select>
					</th>
					<th>
						<select>
							<option>全部时间</option>
							<option>一天</option>
							<option>两天</option>
							<option>一周</option>
							<option>一个月</option>
							<option>三个月</option>
						</select>
					</th>
					<th><a>
						<select>
							<option>默认排序</option>
							<option>回复/查看</option>
							<option>查看</option>
						</select>
					</a></th>
					<th><a>最新</a><span>|</span></th>
					<th><a>热门</a><span>|</span></th>
					<th><a>热帖</a><span>|</span></th>
					<th><a>精华</a></th>
				</tr>

				<%--显示5条置顶帖--%>
				<c:forEach items="${requestScope.toplist}" var="map" >
					<tr>
						<td rowspan="2" class="userPhoto"><img src="${pageContext.request.contextPath}/page/img/avatar/${map['author'].getHeadphoto()}" /></td>
						<td class="title_pageNum" colspan="7">
							<a href="${pageContext.request.contextPath}/readPost?pid=${map["post"].pid}&uid=${map["author"].uid}" style="float:left;font-size: 15px;color: #${map["colornum"]}">${map["post"].title}</a>

							<ul style="float: left;position: relative;top: 3px;">
								<c:forEach begin="2" end="${map['postPages']}" step="1" varStatus="status">
									<c:if test="${status.first}"><li>...</li></c:if>
									<c:if test="${status.index eq 7}"><%--等于7--%>
										<li>...</li>
									</c:if>
									<c:choose>
										<c:when test="${status.index le 6}"><%--小于等于 6 --%>
											<li>${status.index}</li>
										</c:when>
										<c:when test="${status.last}">
											<li>${status.index}</li>
										</c:when>
									</c:choose>
								</c:forEach>
							</ul>
							<c:if test="${map['post'].pcase eq 2}" >
								<img src="${pageContext.request.contextPath}/page/img/post_add/list_icon_04.png" />
							</c:if>
							<i></i>
							<img src="${pageContext.request.contextPath}/page/img/post_add/014.small.gif" />
						</td>
					</tr>
					<tr>
						<td class="author" colspan="3">
							<a style="color: #666;" href="${pageContext.request.contextPath}/seeother?uid=${map["author"].uid}">${map["author"].nickname}</a>
							<span>${map["post"].postingtime}</span>
						</td>
						<td colspan="4" class="note_info" style="text-align: right;">
							<a class="plike" pid="${map["post"].pid}" style="cursor: pointer"></a>&nbsp;&nbsp;<span class="plikenum">${map["post"].plike}</span>&nbsp;
							<a class="visitslogo"></a>&nbsp;${map["post"].visits}&nbsp;
							<a></a>&nbsp;${map["replyPostCount"]}
						</td>
					</tr>
				</c:forEach>
				
				<tr>
					<td colspan="8" class="blockTheme">
						<a href="#">版块主题</a>
						<img src="${pageContext.request.contextPath}/page/img/tool/refresh.png" />
					</td>
				</tr>
				
				<%--显示二十条普通帖子--%>
				<c:forEach items="${requestScope.postList}" var="map">
					<tr>
						<td rowspan="2" class="userPhoto"><img src="${pageContext.request.contextPath}/page/img/avatar/${map["author"].getHeadphoto()}" /></td>
						<td class="user_title_pageNum" colspan="7">
							<a style="float: left;">[${map["typeName"]}]</a>
							<a style="margin-left: 4px; float: left; max-width: 380px;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;display: inline-block;" href="${pageContext.request.contextPath}/readPost?pid=${map["post"].pid}&uid=${map["author"].uid}">${map["post"].title}</a>
                            <ul style="float: left;     position: relative;top: 3px;">
                            <c:forEach begin="2" end="${map['postPages']}" step="1" varStatus="status">
                                <c:if test="${status.first}"><li>...</li></c:if>

                                <c:if test="${status.index eq 7}"><%--等于7--%>
                                    <li>...</li>
                                </c:if>
                                <c:choose>
                                    <c:when test="${status.index le 6}"><%--小于等于 6 --%>
                                        <li>${status.index}</li>
                                    </c:when>
                                    <c:when test="${status.last}">
                                        <li>${status.index}</li>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            </ul>
						</td>
					</tr>
					<tr>
						<td class="author" colspan="3">
							<a style="color: #666;" href="${pageContext.request.contextPath}/seeother?uid=${map["author"].uid}">${map["author"].nickname}</a>
							<span>${map["post"].postingtime}</span>
						</td>
						<td colspan="4" class="note_info" style="text-align: right;">
							<a class="plike" pid="${map["post"].pid}" style="cursor: pointer"></a>&nbsp;&nbsp;<span class="plikenum">${map["post"].plike}</span>&nbsp;
							<a class="visitslogo"></a>&nbsp;${map["post"].visits}&nbsp;
							<a></a>&nbsp;${map["replyPostCount"]}
						</td>
					</tr>
				</c:forEach>
			</table>
			
			<div class="page pageadd">

				    <div class="next-page">
                        <c:if test="${requestScope.currentPage lt requestScope.totalPages}">
					        <a style="cursor: pointer" id = "ajaxNext" curPage="${requestScope.currentPage}" >下一页 >></a>
                        </c:if>
                        <c:if test="${requestScope.currentPage eq requestScope.totalPages}">
                            <a style="cursor: pointer">当前是最后一页了</a>
                        </c:if>
				    </div>


				<div class="choose-page">
					<ul>
						<li><a href="#" id="writeNewPost">发新贴</a></li>
						<li><a href="#">返回</a></li>

                        <%--当页码小于4--%>
                        <c:if test="${requestScope.currentPage lt 5}">
                            <c:forEach begin="1" end="${requestScope.totalPages}" varStatus="status" step="1">
                                <c:if test="${status.count lt 7}">
                                    <c:choose>
                                        <c:when test="${status.count eq requestScope.currentPage}">
                                            <li><a href="${pageContext.request.contextPath}/showThemePost?themeId=${requestScope.themeID}&currentPage=${status.count}" style="background:  #0087e0; color: white;">${status.count}</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a href="${pageContext.request.contextPath}/showThemePost?themeId=${requestScope.themeID}&currentPage=${status.count}">${status.count}</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:if>
                            </c:forEach>
                        </c:if>


                        <%--当大于等于5--%>
                        <c:if test="${requestScope.currentPage gt 4}">
                            <%--显示当前页的前三页--%>
                            <c:forEach begin="${requestScope.currentPage-3}" end="${requestScope.totalPages}" varStatus="status" step="1">
                                <c:if test="${status.count lt 7}">
                                    <c:choose>
                                            <c:when test="${status.count eq requestScope.currentPage}">
                                                <li><a href="${pageContext.request.contextPath}/showThemePost?themeId=${requestScope.themeID}&currentPage=${status.count}" style="background:  #0087e0; color: white;">${status.count}</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li><a href="${pageContext.request.contextPath}/showThemePost?themeId=${requestScope.themeID}&currentPage=${status.count}">${status.count}</a></li>
                                            </c:otherwise>
                                    </c:choose>
                                </c:if>
                            </c:forEach>
                        </c:if>

                        <c:if test="${requestScope.currentPage 	ne requestScope.totalPages}">
                            <li><a href="${pageContext.request.contextPath}/showThemePost?themeId=${requestScope.themeID}&currentPage=${requestScope.currentPage+1}">下一页</a></li>
                        </c:if>
					</ul>
				</div>
			</div>

		</div>

		
		<div class="section_right crhadd">
			<div class="section_right_top">
				<div class="top_head clearfix">
					<div class="top_head_left">
						<img src="${pageContext.request.contextPath}/page/img/block_logo/${requestScope.themeBean.tmlogo}"/>
					</div>
					<div class="top_head_right">
						<span>${requestScope.themeBean.tmname}</span>
						<p>今日: 7851</p>
						<p>主题: 405547</p>
						<p>排名: 3</p>
					</div>
				</div>
				<div class="top_mid">
					<p>版主</p>
					<span>123小组, java后端班, 404074582, 木村小野君, 一岁就很帅, 2650589407, 125958542</span>
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
			
			<!--热门速递-->
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
    <div style="margin-bottom: 115px;border-radius:5px;background: white;margin-left: 115px;height: 479px;width: 800px;padding: 30px 30px 10px 30px ">
        <c:if test="${ empty sessionScope.user}">
            <span style="display: block;padding: 30px 50px; border: 3px solid #b9bbba;border-radius: 5px;    text-align: center;    color: #999;">
                请先<a href="${pageContext.request.contextPath}/page/login.jsp" style="color: #0087e0;margin: 0 5px;">登录</a>再发帖
            </span>
        </c:if>
       <c:if test="${not empty sessionScope.user}">
           <form action="posting" method="post" >
               <a class="avar" href="${pageContext.request.contextPath}/page/dnf_personCenter/personalCenter.jsp" target="_blank">
                   <img src="${pageContext.request.contextPath}/page/img/avatar/${sessionScope.user.headphoto}" style="float: left;position: relative;top: -20px;left: 8px;"/>
               </a>
               <input type="text" name="postName" placeholder="点击此处输入标题" style="position: relative;left: 15px;top: -6px;width: 300px;height:21px;padding:2px 4px;float: left;">
               <select style="margin-right:15px;font-size:14px;color: #999;float: right;margin-left: 15px; width: 130px;height: 21px;padding: 0 15px 0 4px;border:1px solid #2d2b2a" name="typeId">
                   <option value="0">选择主题分类</option>
                   <option value="1">官方活动</option>
                   <option value="2">游戏讨论</option>
                   <option value="3">召唤策划</option>
                   <option value="4">论坛活动</option>
                   <option value="5">普通帖子</option>
                   <option value="6">韩服资讯</option>
                   <option value="7">体验服资讯</option>
                   <option value="8">写手资讯</option>
                   <option value="9">官方信息</option>
                   <option value="10">DNF小喇叭</option>
                   <option value="11">BUG反馈</option>
                   <option value="12">同人作品</option>
                   <option value="13">音乐分享</option>
                   <option value="14">壁纸铃声</option>
                   <option value="15">游戏补丁</option>
               </select>

               <div id="odiv" style="display:none;position:absolute;z-index:100;">
                   <img src="${pageContext.request.contextPath}/page/assets/pic/sx.png" title="缩小" border="0" alt="缩小" onclick="sub(-1);"/>
                   <img src="${pageContext.request.contextPath}/page/assets/pic/fd.png" title="放大" border="0" alt="放大" onclick="sub(1)"/>
                   <img src="${pageContext.request.contextPath}/page/assets/pic/cz.png" title="重置" border="0" alt="重置" onclick="sub(0)"/>
                   <img src="${pageContext.request.contextPath}/page/assets/pic/sc.png" title="删除" border="0" alt="删除" onclick="del();odiv.style.display='none';"/>
               </div>
               <div  onmousedown="show_element(event)" style="clear:both" id="customized-buttonpane" class="editor" name="editor"></div>
               <input type="text" value="${requestScope.themeID}" name="themeID" style="display: none">
               <input type="text" value="${sessionScope.user.uid}" name="uid" style="display: none">
			   <span style="color: red">${requestScope.postingMsg}</span>
               <input type="submit" value="发新帖" style="font-size:14px;float:right;margin-right:15px;display: block;height: 30px;border: 1px solid #D0D0D0;text-align: center;border-radius: 5px;line-height: 30px;width: 75px;padding: 0 15px;background: rgb(0, 135, 224); color: white;">

           </form>
       </c:if>
    </div>
	<%--公用页脚--%>
	<jsp:include page="footer.jsp"/>
	
	</body>
	<script type="text/javascript" src="${pageContext.request.contextPath}/page/js/jquery-1.8.3.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/page/js/reply.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/page/js/notic.js" ></script>
    <script src="${pageContext.request.contextPath}/page/js/plug-in.js"></script>
    <script src="${pageContext.request.contextPath}/page/assets/trumbowyg.js"></script>
    <script src="${pageContext.request.contextPath}/page/assets/plugins/base64/trumbowyg.base64.js"></script>
    <script>
       $("#ajaxNext").click(function () {
           var currentPage = parseInt(this.getAttribute("curPage"))+1;
           if(currentPage>${requestScope.totalPages}){
               return;
           }
           console.log("currentPage"+currentPage);
           var URL = "${pageContext.request.contextPath}/ajaxShowPost?currentPage="+currentPage+"&themeID=${requestScope.themeID}";
		   $.ajax({
				async:true,
				type:"POST",
				dataType:"json",
				url:URL,
				success:function (data){
                    for (var i = 0; i <data.length ; i++) {
                        var author=    data[i].author;
                        var post = data[i].post;
                        var typeName = data[i].typeName;
                        var replyPostCount = data[i].replyPostCount;
                        var postPages = data[i].postPages;

                        var str = "<tr> <td rowspan='2' class='userPhoto'>  <img src='${pageContext.request.contextPath}/page/img/avatar/"+author.headphoto+"'/></td>"+
								"<td class='user_title_pageNum' colspan='7'><a style='float: left;'>"+typeName+"</a>"+
								"<a style='margin-left: 4px; float: left; max-width: 380px;overflow: hidden;text-overflow: ellipsis;white-space:nowrap;display: inline-block;'>"+post.title+"</a>"+
								" </td> </tr><tr><td class='author' colspan='3'><a>"+author.nickname+"</a> <span>"+post.postingtime+"</span></td><td colspan='4' class='note_info'  style='text-align: right;'>"+
								"<a></a>&nbsp;&nbsp;"+post.plike+"&nbsp; <a></a>&nbsp;"+post.visits+"&nbsp;<a></a>&nbsp;"+replyPostCount+"</td></tr>";
                        $("#show_posts").append(str);
                    }
                    $("#ajaxNext").attr("curPage",currentPage);
				}
			})
        });

       $(".plike").click(function () {
           if(this.getAttribute("pid")==null){
               alert("您已经点过赞了，不能再点了！");
               return;
		   }
           var URL = "${pageContext.request.contextPath}/plikeadd?pid="+this.getAttribute("pid");

           this.removeAttribute("pid");

           var text = $(this).next().html();
           /*加载检测*/
           console.log(text);
           $(this).next().html(parseInt(text)+1);
           $.ajax({
               async:true,
               type:"POST",
               dataType:"text",
               url:URL,
               success:function (data){
                   alert(data);
               }
           })
       });
    </script>




</html>
