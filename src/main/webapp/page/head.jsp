<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>head</title>
    <link href="${pageContext.request.contextPath}/page/css/style_1.css" rel="stylesheet" />
</head>
<body>
<!-- 公用头部 -->
<header class="clearfix">
    <div class="logo">
        <a href="${pageContext.request.contextPath}/page/index.jsp"><img src="${pageContext.request.contextPath}/page/img/head/head_top.png" width="100%" height="100%" /></a>
    </div>
    <div class="collection">
        <a href="#"><img src="${pageContext.request.contextPath}/page/img/head/collect.png" /></a>
    </div>
    <div class="nav_tab">
        <ul>
            <li>
                <a href="${pageContext.request.contextPath}/page/index.jsp"><b>论坛首页</b>
                    <p>HOME</p>
                </a>
            </li>
            <li>
                <a href="#" id="changePlate"><b>切换版面</b>
                    <p>BOARD</p>
                </a>
                <div class="changePlate" >
                    <div class="changePlate_left">
                        <a   href="#">游戏讨论<p>DISCUSS</p></a>
                        <a   href="#">官方专区<p>OFFICAL</p></a>
                        <a   href="#">灌水闲谈<p>CHAT</p></a>
                        <a   href="#">同人风采<p>SHOW</p></a>
                        <a   href="#">论坛事务<p>MANAGE</p></a>
                    </div>
                    <!-- 中间的线条-->
                    <div class="changePlate_midSolid"></div>
                    <div class="changePlate_right">
                        <div class="top_boxs" style="display: block;">
                            <table >
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h1.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=1&currentPage=1">综合讨论</a>
                                        <span>GAME FOUM</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h5.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=2&currentPage=1">体验服</a>
                                        <span>EXPERIENCE</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h9.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=3&currentPage=1">论坛快讯</a>
                                        <span>NEWS</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h10.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=4&currentPage=1">DNF中医馆</a>
                                        <span>MEDICINE</span>
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <div class="top_boxs" style="display: none;">
                            <table >
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h2.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=5&currentPage=1">客服&BUG反馈</a>
                                        <span>SERVICE</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h15.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=6&currentPage=1">TP安全复查</a>
                                        <span>TENPROTECT</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h4.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=7&currentPage=1">跨区稳定性</a>
                                        <span>AREA PLAN</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!--*************************-->

                        <!-- &&&&&&&&&&&&&&&&&&&&&&&  -->
                        <div class="top_boxs" style="display: none;">
                            <table>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h6.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=8&currentPage=1">月光酒馆</a>
                                        <span>MOONLIGHT</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h8.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=9&currentPage=1">灌水闲谈</a>
                                        <span>CHAT FORUM</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!--*************************-->

                        <!-- &&&&&&&&&&&&&&&&&&&&&&&  -->
                        <div class="top_boxs" style="display: none;">
                            <table>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h7.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=10&currentPage=1">奶粉SHOW</a>
                                        <span>FAN SHOW</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!--*************************-->

                        <!-- &&&&&&&&&&&&&&&&&&&&&&&  -->
                        <div class="top_boxs" style="display: none;">
                            <table>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h14.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=11&currentPage=1">DNF手游筹备区</a>
                                        <span>MONBILE GAME</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h11.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=12&currentPage=1">论坛事务</a>
                                        <span>AFFAIRS</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h12.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=13&currentPage=1">非工作人员禁入</a>
                                        <span>WORK</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/page/img/block_logo/board_h13.png" />
                                        <a href="${pageContext.request.contextPath}/showThemePost?themeId=14&currentPage=1">赛利亚的小黑屋</a>
                                        <span>BLACKLIST</span>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/page/clientService.jsp"><b>联系客服</b>
                    <p>SERVICE</p>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/page/pointsMall.jsp"><b>积分商城</b>
                    <p>SHOP</p>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/page/gloryPalace.jsp"><b>荣耀殿堂</b>
                    <p>HALL</p>
                </a>
            </li>
        </ul>
    </div>
    <c:if test="${empty sessionScope.user}">
        <div class="loginOrRegister">
            <a href="${pageContext.request.contextPath}/page/login.jsp" class="login"><i>登录</i></a>
            <a href="${pageContext.request.contextPath}/page/register.jsp" class="register"><i>注册</i></a>
        </div>
    </c:if>
    <c:if test="${not empty sessionScope.user}">
        <div class="hd_prompt">
            <a href="#" id="myprompt" >
                <em>4</em>
            </a>
        </div>

        <div class="loginuser">
            <a class="avar" href="#" target="_blank"><img src="${pageContext.request.contextPath}/page/img/avatar/${sessionScope.user.headphoto}"></a>
            <div class="loginuserchoose">
                <a href="${pageContext.request.contextPath}/page/dnf_personCenter/personalCenter.jsp" style="margin-top:10px;" target="_blank" title="访问我的空间"><b>${sessionScope.user.nickname}</b></a>
                <a class="usgroup" href="#">
                    <label>
                        <c:choose>
                            <c:when test="${sessionScope.user.ulevel eq 0}">无色小晶体</c:when>
                            <c:when test="${sessionScope.user.ulevel eq 1}">普通</c:when>
                            <c:when test="${sessionScope.user.ulevel eq 2}">高级</c:when>
                            <c:when test="${sessionScope.user.ulevel eq 3}">稀有</c:when>
                            <c:when test="${sessionScope.user.ulevel eq 4}">神器</c:when>
                            <c:when test="${sessionScope.user.ulevel eq 5}">勇者</c:when>
                            <c:when test="${sessionScope.user.ulevel eq 6}">传说</c:when>
                            <c:when test="${sessionScope.user.ulevel eq 7}">史诗</c:when>
                            <c:when test="${sessionScope.user.ulevel eq 8}">使徒</c:when>
                        </c:choose>
                    </label>
                </a>
                <div class="head_hr"></div>
                <a class="go-post-a" href="#">发布新贴</a>
                <a href="#">每日签到</a>
                <a href="#">绑定角色</a>
                <div class="head_hr"></div>
                <a href="#" id="pm_ntc">消息中心</a>
                <a href="${pageContext.request.contextPath}/page/dnf_personCenter/personalCenter.jsp">个人中心</a>
                <a href="#">我的帖子</a>
                <a href="${pageContext.request.contextPath}/mybadges">我的徽章</a>
                <a class="logout" href="${pageContext.request.contextPath}/quit">退出登陆</a>
            </div>
        </div>
    </c:if>

</header>
</body>
</html>
