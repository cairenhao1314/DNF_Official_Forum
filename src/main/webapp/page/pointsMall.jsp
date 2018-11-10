<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
        <link href="css/style_1.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/head.css" />
        <link rel="stylesheet" type="text/css" href="css/index2.css"/>
        <link rel="stylesheet" type="text/css" href="jqueryPagination/css/jquery.pagination.css"/>
	</head>
	<body>
		<%--公用头部--%>
		<jsp:include page="head.jsp"/>
		<!--描述：内容-->
		<section class="section w">
			<%--图片--%>
			<i></i>
			<div>
				<span>
					<a></a>
					<a style="text-decoration: none;">会员登录</a>
					<select>
						<option>物品类型</option>
						<option>兑换</option>
						<option>抽奖</option>
						<option>竞拍</option>
					</select> 
					<select>
						<option>物品状态</option>
						<option>正在进行</option>
						<option>即将开始</option>
						<option>已经结束</option>
					</select>
					<a>
						<input placeholder="输入名称搜索"/>
						<a></a>
						<button>搜索</button>
					</a>
				</span>
				<ul>
                    <li class="statestart states">    <a>开始</a>  <a>番薯*30</a>   <p><a>55</a>代币券 兑换</p>  <a>番薯*30</a>   <a></a>  <a></a><a>43天21:41 后结束</a> <a></a><a>10086</a>  <button>立即兑换</button></li>
					<li class="stateend states">    <a>以结束</a>  <a>番薯*30</a>   <p><a>55</a>代币券 兑换</p>  <a>番薯*30</a>   <a></a>  <a></a><a>43天21:41 后结束</a> <a></a><a>10086</a>  <button>立即兑换</button></li>
					<li class="stateend states"></li>
					<li class="stateend states"></li>
					<li class="stateend states"></li>
					<li class="stateend states"></li>
					<li class="stateend states"></li>
					<li class="stateend states"></li>
					<li class="stateend states"></li>
					<li class="stateend states"></li>
					<li class="stateend states"></li>
					<li class="stateend states"></li>
				</ul>
			</div>
			<a id="page"></a>
		</section>
		<%--<!--
        	作者：offline
        	时间：2018-09-14
        	描述：尾部
        -->
		<footer class="footer w">
			<div class="footerdiv">
				<span></span>
				<span><h1>腾讯互动娱乐 | 服务条款 | 广告服务 | 腾讯游戏招聘 | 腾讯游戏地图 | 游戏活动 | 商务合作 | 网址导航 
                       <p>Copyright © 1998 - 2016 Tencent. All Rights Reserved</p>
</h1></span>
			</div>
		</footer>--%>
        <%--公用页脚--%>
        <jsp:include page="footer.jsp"/>
	</body>
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/portamento.js"></script>
	<script src="js/hc-sticky.js"></script>
	<script src="js/index2.js"></script>
	<script type="text/javascript" src="js/notic.js" ></script>
	<script type="text/javascript" src="jqueryPagination/js/jquery.pagination.min.js" ></script>
</html>
