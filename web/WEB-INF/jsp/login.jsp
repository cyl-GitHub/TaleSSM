<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/login.css">
    <link href="${pageContext.request.contextPath}/page/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/page/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/page/js/bootstrap.min.js"></script>

</head>
<body>
<div class="allpage">
    <div class="login">
        <div class="row" style="padding: 91px 100px 19px 50px;">
            <form class="form-inline" role="form" action="/user/doLogin" method="post">
                <div class="form-group">
                    <label class="sr-only" for="name">博客名</label>
                    <input type="text" class="form-control" placeholder="Blog name" name="name" id="name">
                </div>
                <div class="form-group">
                    <label class="sr-only" for="pass">密码</label>
                    <input type="password" class="form-control" placeholder="Password" name="password" id="pass">
                </div>

                <c:if test="${flag}">
                    <div style="color: red;">密码输入错误</div>
                </c:if>
                <c:if test="${b}">
                    <div style="color: red;">数据不可为空</div>
                </c:if>

                <div class="form-group">
                    <input class="btn btn-default" type="submit" value="登录">
                    <a href="/user/register" target="_blank">
                        <input class="btn btn-default" type="button" value="注册">
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
