<%--
  Created by IntelliJ IDEA.
  User: cyl27
  Date: 2019/5/13
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/page1.css">
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/TotalPage.css">
</head>
<body>
<div class="allpage">

    <div class="up">
        <%--后台--%>
        <a href="/front/select">
            <div class="up_left"></div>
        </a>
        <div class="up_right">
            <a href="/user/login"><img src="${requestScope.ContextPath}/page/img/page1/quit.gif" alt="退出"></a>
        </div>
    </div>

    <div class="down">
        <iframe src="/dashboard/navigation" class="iframe1" target="iframe2">
        </iframe>
        <iframe src="/dashboard/dashboard" class="iframe2" name="iframe2">
        </iframe>
    </div>
</div>
</body>
</html>
