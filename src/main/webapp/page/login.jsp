<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>登录页面</title>
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/page/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/page/css/reset.css"/>
</head>
<body>

<div id="particles-js">
    <div class="login">
        <form action="../login" method="post">
        <div class="login-top">
            DNF官方论坛登录
        </div>
        <div class="login-center clearfix">
            <div class="login-center-img"><img src="${pageContext.request.contextPath}/page/img/name.png"/></div>
            <div class="login-center-input">
                <input type="text" name="user" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
                <div class="login-center-input-text">用户名</div>
            </div>
        </div>
        <div class="login-center clearfix">
            <div class="login-center-img"><img src="${pageContext.request.contextPath}/page/img/password.png"/></div>
            <div class="login-center-input">
                <input type="password" name="pwd"value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
                <div class="login-center-input-text">密码</div>
            </div>
        </div>
        <div class="login-button">
            <input type="submit"   style="border: none;background: transparent;font-size: 16px;color: white;height: 40px;width: 100%;" value="登陆"/>
        </div>
        </form>
    </div>
    <div class="sk-rotating-plane"></div>
</div>
<c:if test="${not empty sessionScope.loginMsg}">
    <script>
        alert("${sessionScope.loginMsg}");
    </script>
</c:if>

<!-- scripts -->
<script src="js/particles.min.js"></script>
<script src="js/app.js"></script>
<script src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
    function hasClass(elem, cls) {
        cls = cls || '';
        if (cls.replace(/\s/g, '').length == 0) return false; //当cls没有参数时，返回false
        return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
    }

    function addClass(ele, cls) {
        if (!hasClass(ele, cls)) {
            ele.className = ele.className == '' ? cls : ele.className + ' ' + cls;
        }
    }

    function removeClass(ele, cls) {
        if (hasClass(ele, cls)) {
            var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
            while (newClass.indexOf(' ' + cls + ' ') >= 0) {
                newClass = newClass.replace(' ' + cls + ' ', ' ');
            }
            ele.className = newClass.replace(/^\s+|\s+$/g, '');
        }
    }

</script>
</body>
</html>
