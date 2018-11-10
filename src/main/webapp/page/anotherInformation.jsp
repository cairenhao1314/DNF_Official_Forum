<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/6
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${requestScope.seeUser.nickname}的个人资料 -  地下城与勇士官方论坛 -  Powered by Discuz!</title>


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
            个人资料
        </div>
    </div>

    <style id="diy_style" type="text/css"></style>

    <div class="wp">
        <div id="diy1" class="area"></div>
    </div><div id="uhd">
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
        <li><a href="${pageContext.request.contextPath}/seeotherpost?uid=${requestScope.seeUser.uid}">主题</a></li>
        <li class="a"><a href="${pageContext.request.contextPath}/seeother?uid=${requestScope.seeUser.uid}">个人资料</a></li>
    </ul>
</div>
    <div id="ct" class="ct1 wp cl">
        <div class="mn">
            <div id="diycontenttop" class="area"></div>
            <div class="bm bw0">
                <div class="bm_c">
                    <div class="bm_c u_profile">
                        <div class="pbm mbm bbda cl">
                            <h2 class="mbn">
                                ${requestScope.seeUser.nickname}<span class="xw0">(UID: ${requestScope.seeUser.uid})</span>
                            </h2>
                            <ul class="pf_l cl pbm mbm">
                                <li><em>邮箱状态</em>未验证</li>
                                <li><em>视频认证</em>未认证</li>
                            </ul>
                            <ul>
                            </ul>
                            <ul class="cl bbda pbm mbm">
                                <li>
                                    <em class="xg2">统计信息</em>
                                    <a href="#" target="_blank">好友数 0</a>
                                    <span class="pipe">|</span><a href="#" target="_blank">回帖数 ${requestScope.replyPosts}</a>
                                    <span class="pipe">|</span>
                                    <a href="#" target="_blank">主题数 ${requestScope.themePosts}</a>
                                </li>
                            </ul>
                            <ul class="pf_l cl"><li><em>信用评分级别</em>${requestScope.seeUserProperty.credit}</li>
                                <li><em>擅长职业</em>${requestScope.seeUserInformation.profession}</li>
                            </ul>
                        </div>
                        <div class="pbm mbm bbda cl">
                            <h2 class="mbn">活跃概况</h2>
                            <ul>
                                <li>
                                    <em class="xg1">用户组&nbsp;&nbsp;</em>
                                    <span style="color:#999999" class="xi2">
                                        <a href="#" target="_blank">
                                            <c:choose>
                                                <c:when test="${requestScope.seeUser.ulevel eq 0}">无色小晶体</c:when>
                                                <c:when test="${requestScope.seeUser.ulevel eq 1}">普通</c:when>
                                                <c:when test="${requestScope.seeUser.ulevel eq 2}">高级</c:when>
                                                <c:when test="${requestScope.seeUser.ulevel eq 3}">稀有</c:when>
                                                <c:when test="${requestScope.seeUser.ulevel eq 4}">神器</c:when>
                                                <c:when test="${requestScope.seeUser.ulevel eq 5}">勇者</c:when>
                                                <c:when test="${requestScope.seeUser.ulevel eq 6}">传说</c:when>
                                                <c:when test="${requestScope.seeUser.ulevel eq 7}">史诗</c:when>
                                                <c:when test="${requestScope.seeUser.ulevel eq 8}">使徒</c:when>
                                            </c:choose>
                                        </a>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/page/img/access/${requestScope.seeUser.ulevel}.gif" alt="用户组" class="vm" />
                                </li>
                            </ul>
                        </div>
                        <div id="psts" class="cl">
                            <h2 class="mbn">统计信息</h2>
                            <ul class="pf_l">
                                <li><em>经验值</em>${requestScope.seeUserProperty.EXP}</li>
                                <li><em>金币数</em>${requestScope.seeUserProperty.goldcoin}</li>
                                <li><em>魅力值</em>${requestScope.seeUserProperty.charm} </li>
                                <li><em>代币券</em>${requestScope.seeUserProperty.coupon}</li>
                                <li><em>粉丝币</em>${requestScope.seeUserProperty.fanscoin}</li>
                            </ul>
                        </div>
                    </div><div id="diycontentbottom" class="area"></div></div>
            </div>
        </div>
    </div>

    <div class="wp mtn">
        <div id="diy3" class="area"></div>
    </div>
</div>

<%--公用页脚--%>
<jsp:include page="footer.jsp"/>


</body>
</html>

