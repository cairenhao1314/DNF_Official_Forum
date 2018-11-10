<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${requestScope.seeUser.nickname}的帖子 -  地下城与勇士官方论坛 -  Powered by Discuz!</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/page/css/style_3_common.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/page/css/style_3_home_space.css" />
    <link href="${pageContext.request.contextPath}/page/css/head.css" rel="stylesheet" />

</head>

<%--公用头部--%>
<jsp:include page="head.jsp"/>
<!--图片 -->
<div class="poster">
    <!--<img src="img/top.jpg"  height="100%"/>-->
</div>


<div id="wp" class="wp">
    <div id="pt" class="bm cl">
        <div class="z">
            <a href="${pageContext.request.contextPath}/page/index.jsp" class="nvhm" title="首页">地下城与勇士官方论坛</a> <em>&rsaquo;</em>
            <a href="#">${requestScope.seeUser.nickname}</a> <em>&rsaquo;</em>
            <a href="#">帖子</a>
        </div>
    </div>
    <style id="diy_style" type="text/css"></style>
    <div class="wp">
        <div id="diy1" class="area"></div>
    </div>
    <div id="uhd">
        <div class="mn">
        </div>
    <div class="h cl">
        <div class="icn avt"><a href="#"><img src="${pageContext.request.contextPath}/page/img/avatar/${requestScope.seeUser.headphoto}" /></a></div>
        <h2 class="mt">
            ${requestScope.seeUser.nickname}</h2>
        <p>
            <a href="${pageContext.request.contextPath}/seeother?uid=${requestScope.seeUser.uid}" class="xg1">${pageContext.request.contextPath}/seeother?uid=${requestScope.seeUser.uid}</a>
        </p>
    </div>


    <ul class="tb cl" style="padding-left: 75px;">
        <li class="a"><a href="#">主题</a></li>
        <li><a href="${pageContext.request.contextPath}/seeother?uid=${requestScope.seeUser.uid}">个人资料</a></li>
    </ul>
    </div>

    <div id="ct" class="ct1 wp cl">
        <div class="mn">
            <div id="diycontenttop" class="area"></div>
            <div class="bm bw0">
                <div class="bm_c">
                    <p class="tbmu">
                        <a href="#"  class="a">主题</a>
                        <span class="pipe">|</span>
                        <a href="#" >回复</a>
                    </p>
                    <div class="tl">

                            <table cellspacing="0" cellpadding="0">
                                <tr class="th">
                                    <td class="icn">&nbsp;</td>
                                    <th>主题</th>
                                    <td class="frm">版块</td>
                                    <td class="num">回复/查看</td>
                                    <td class="by"><cite>最后发帖</cite></td>
                                </tr>
                                <c:forEach items="${requestScope.list}" var="map" >
                                    <tr>
                                        <td class="icn">
                                            <a href="#" title="新窗口打开" target="_blank">
                                                <img src="${pageContext.request.contextPath}/page/img/tool/folder_new.gif" />
                                            </a>
                                        </td>
                                        <th>
                                            <a href="${pageContext.request.contextPath}/readPost?pid=${map['themepost'].pid}&uid=${map['themepost'].uid}" target="_blank" >${map["themepost"].title}</a>
                                        </th>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/showThemePost?themeId=${map['themepost'].tmid}&currentPage=1" class="xg1" target="_blank">${map["tmname"]}</a>
                                        </td>

                                        <td class="num">
                                            <a href="#" class="xi2" target="_blank">${map["replycount"]}</a>
                                            <em>${map["themepost"].visits}</em>
                                        </td>

                                        <td class="by">
                                            <cite><a href="#" target="_blank">发帖人</a></cite>
                                            <em><a href="#" target="_blank"><span title="时间">时间</span></a></em>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%--公用页脚--%>
<jsp:include page="footer.jsp"/>

</body>
</html>


