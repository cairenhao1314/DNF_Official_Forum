<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>每日签到</title>
		<link rel="stylesheet" type="text/css" href="../css/dnf-MRQD.css"/>
	</head>
	<body style="overflow-y: hidden">
	<%--公用头部--%>
	<jsp:include page="../head.jsp"/>
    <!--图片 -->
    <div class="poster">
        <!--<img src="img/top.jpg"  height="100%"/>-->
    </div>
		<nav><a href="#" class="left home"><img src="img/home.png"/></a>
			<em class="leftg">></em>
			<a href="#" class="left mrqd">每日签到</a>
			
			<span class="nav-right">今日签到之星：巴鲁＆希达 | 历史最高人数：8283人 |
				<a href="#" class="nav-right">奖励规则</a>
</span>
		</nav>
		<section>
			<div class="seleft">
				<input type="button" id="JRQD" />
				<p>您今天还没签到</p>
			</div>
			<h3></h3>
			<div class="seright">
				<div class="seright-top">
					<p><img src="img/4f6cd47cd04b4338aef05c15ec22a53b.gif" class="touxian"/>1524868849</p>
					<ul>
						<li><h4>连续签到</h4><p><span class="day"></span>天</p></li>
						<li><h4>签到等级</h4><p class="DJ">LV.<span class="LV"></span></p></li>
						<li><h4>积分奖励</h4><p><span class="JFJL"></span></p></li>
						<li><h4>总天数</h4><p><span class="day"></span>天</p></li>
					</ul>
					<div class="seright-right">
						<p>6726 <span>人</span></p>
					</div>
				</div>
			</div>
			</section>
			
			<div class="sortcotain">
				<div class="sort">
					<ul>
						<li class="ph sortactive">今日排行</li>
						<li class="ph">本月排行</li>
						<li class="ph">总排行</li>
					</ul>
				</div>
				<div class="cotain sortcoshow">
					<table cellpadding="10px">
						<tr style="color: #999999;"><th>昵称</th> 
							<th style="width: 90px;">总天数</th>
							<th style="width: 90px;">月天数</th>
							<th style="width: 170px;">上次签到时间</th>
							<th style="width: 180px;">目前等级</th>
							<th style="width: 130px;">上次奖励</th>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>一莫千殇</td>
							<td>75</td>
							<td>7</td>
							<td>2018-09-14 09:01</td>
							<td>[LV.6]安特贝鲁峡谷</td>
							<td>14 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>一莫千殇</td>
							<td>75</td>
							<td>7</td>
							<td>2018-09-14 09:01</td>
							<td>[LV.6]安特贝鲁峡谷</td>
							<td>14 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>一莫千殇</td>
							<td>75</td>
							<td>7</td>
							<td>2018-09-14 09:01</td>
							<td>[LV.6]安特贝鲁峡谷</td>
							<td>14 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>一莫千殇</td>
							<td>75</td>
							<td>7</td>
							<td>2018-09-14 09:01</td>
							<td>[LV.6]安特贝鲁峡谷</td>
							<td>14 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>一莫千殇</td>
							<td>75</td>
							<td>7</td>
							<td>2018-09-14 09:01</td>
							<td>[LV.6]安特贝鲁峡谷</td>
							<td>14 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>一莫千殇</td>
							<td>75</td>
							<td>7</td>
							<td>2018-09-14 09:01</td>
							<td>[LV.6]安特贝鲁峡谷</td>
							<td>14 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>一莫千殇</td>
							<td>75</td>
							<td>7</td>
							<td>2018-09-14 09:01</td>
							<td>[LV.6]安特贝鲁峡谷</td>
							<td>14 额外经验</td>
						</tr>
					</table>
				</div>
				<div class="cotain ">
					<table cellpadding="10px">
						<tr style="color: #999999;"><th>昵称</th> 
							<th style="width: 90px;">总天数</th>
							<th style="width: 90px;">月天数</th>
							<th style="width: 170px;">上次签到时间</th>
							<th style="width: 180px;">目前等级</th>
							<th style="width: 130px;">上次奖励</th>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>井盖下的女友</td>
							<td>253</td>
							<td>15</td>
							<td>2018-09-14 00:25</td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>井盖下的女友</td>
							<td>253</td>
							<td>15</td>
							<td>2018-09-14 00:25</td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>一莫千殇</td>
							<td>75</td>
							<td>7</td>
							<td>2018-09-14 09:01</td>
							<td>[LV.6]安特贝鲁峡谷</td>
							<td>14 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>井盖下的女友</td>
							<td>253</td>
							<td>15</td>
							<td>2018-09-14 00:25</td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>井盖下的女友</td>
							<td>253</td>
							<td>15</td>
							<td>2018-09-14 00:25</td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>井盖下的女友</td>
							<td>253</td>
							<td>15</td>
							<td>2018-09-14 00:25</td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>井盖下的女友</td>
							<td>253</td>
							<td>15</td>
							<td>2018-09-14 00:25</td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
					</table>
				</div>
				<div class="cotain ">
					<table cellpadding="10px">
						<tr style="color: #999999;"><th>昵称</th> 
							<th style="width: 90px;">总天数</th>
							<th style="width: 90px;">月天数</th>
							<th style="width: 170px;">上次签到时间</th>
							<th style="width: 180px;">目前等级</th>
							<th style="width: 130px;">上次奖励</th>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>吃素的L先生</td>
							<td>254</td>
							<td>14</td>
							<td>2018-09-14 00:06 </td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>吃素的L先生</td>
							<td>254</td>
							<td>14</td>
							<td>2018-09-14 00:06 </td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>吃素的C先生</td>
							<td>254</td>
							<td>14</td>
							<td>2018-09-14 00:06 </td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>吃素的L先生</td>
							<td>254</td>
							<td>14</td>
							<td>2018-09-14 00:06 </td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>吃素的V先生</td>
							<td>254</td>
							<td>14</td>
							<td>2018-09-14 00:06 </td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>吃素的L先生</td>
							<td>254</td>
							<td>14</td>
							<td>2018-09-14 00:06 </td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
						<tr style="color: #999999; font-size: 14px;">
							<td>吃素的L先生</td>
							<td>254</td>
							<td>14</td>
							<td>2018-09-14 00:06 </td>
							<td>[LV.8]时空之门</td>
							<td>6 额外经验</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="ZJYH">
				<h3>中奖用户</h3>
				<div class="ZZMD">
					
					<ul>
						<li><img src="img/noavatar_small.gif"/><span>吃素的A先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的B先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的C先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的D先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的E先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的F先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的G先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的H先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的I先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的J先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的K先生<br />获得了代币券奖励</span></li>
						<li><img src="img/noavatar_small.gif"/><span>吃素的L先生<br />获得了代币券奖励</span></li>
						
					</ul>
				</div>
				<div class="ZZLB">
					<div class="ZZMD_LIST">
						<ul>
						<li>云澜轩获得了 15额外经验</li>
						<li>无名剑获得了 3额外经验</li>
						<li>0呵呵0获得了 5额外经验</li>
						<li>毛猫获得了 12额外经验</li>
						<li>云澜轩获得了 15额外经验 </li>
						<li>无名剑获得了 3额外经验</li>
						<li>0呵呵0获得了 5额外经验</li>
						<li>毛猫获得了 12额外经验</li>
						<li>云澜轩获得了 15额外经验</li>
						<li>无名剑获得了 3额外经验</li>
						<li>0呵呵0获得了 5额外经验</li>
						<li>毛猫获得了 12额外经验</li>
						<li>无名剑获得了 3额外经验</li>
						<li>0呵呵0获得了 5额外经验</li>
						<li>毛猫获得了 12额外经验</li>
						<li>无名剑获得了 3额外经验</li>
						<li>0呵呵0获得了 5额外经验</li>
						<li>毛猫获得了 12额外经验</li>
					</ul>
					</div>
					
				</div>
			</div>
    <%--公用页脚--%>
    <jsp:include page="../footer.jsp"/>
	
	
	<script src="../js/jquery-1.8.3.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/MRQD.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="../js/notic.js" ></script>
	</body>
</html>
