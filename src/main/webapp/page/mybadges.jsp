<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/6
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>勋章 -  地下城与勇士官方论坛 -  Powered by Discuz!</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/head.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/page/css/style_3_common.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/page/css/style_3_home_medal.css" />
</head>

<body style="overflow-y: hidden">
<%--公用头部--%>
<jsp:include page="head.jsp"/>
<!--图片 -->
<div class="poster">
    <!--<img src="img/top.jpg"  height="100%"/>-->
</div>

<div id="wp" class="wp">
    <div id="pt" class="bm cl">
        <div class="z">
            <a href="#" class="nvhm" title="首页">地下城与勇士官方论坛</a> <em>&rsaquo;</em>
            <a href="#">勋章</a>
        </div>
    </div>

    <div id="ct" class="ct2_a wp cl">
        <div class="mn">
            <div class="bm bw0">
                <h1 class="mt">
                    勋章中心</h1>
                <ul class="mtm mgcl cl">

                    <c:forEach items="${requestScope.badges}" var="badge" varStatus="status" >
                        <li>
                            <div id="medal_${status.count+10}_menu" class="tip tip_4" style="display:none">
                                <div class="tip_horn"></div>
                                <div class="tip_c" style="text-align:left">
                                    <p>${badge.badgeinfo}</p>
                                    <p class="mtn">
                                        人工授予
                                    </p>
                                </div>
                            </div>
                            <div id="medal_${status.count+10}" class="mg_img" onmouseover="showMenu({'ctrlid':this.id, 'menuid':'medal_${status.count+10}_menu', 'pos':'12!'});"><img src="${pageContext.request.contextPath}/page/img/badge/${badge.badgeurl}" alt="${badge.badgeinfo}" style="margin-top: 20px;width:auto; height: auto;" /></div>
                            <p class="xw1">${badge.badgeinfo}</p>
                            <p>
                            </p>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>

        <div class="appl">
            <div class="tbn">
                <h2 class="mt bbda">勋章</h2>
                <ul>
                    <li ><a href="${pageContext.request.contextPath}/showbadge">勋章中心</a></li>
                    <li class="a"><a href="${pageContext.request.contextPath}/mybadges">我的勋章</a></li>
                </ul>
            </div>
        </div>
    </div>	</div>

<%--公用页脚--%>
<jsp:include page="footer.jsp"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/page/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/page/js/common.js"></script>


</body>
</html>