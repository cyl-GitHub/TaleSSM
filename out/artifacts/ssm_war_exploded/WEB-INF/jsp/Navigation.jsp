<%--
  Created by IntelliJ IDEA.
  User: cyl27
  Date: 2019/5/13
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导航栏</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/Navigation.css">
</head>
<body style="background-color: #2f353f">


<ul>

    <a href="/dashboard/selectInformation1" target="iframe2">
        <li>仪表盘</li>
    </a>
    <a href="/article/publish" target="iframe2">
        <li>发布文章</li>
    </a>
    <a href="/article/doPage" target="iframe2">
        <li>文章管理</li>
    </a>
    <a href="/type/type" target="iframe2">
        <li>分类/标签</li>
    </a>
    <a href="/file/selectFile" target="iframe2">
        <li>文件管理</li>
    </a>
    <a href="/friendServlet" target="iframe2">
        <li>友链管理</li>
    </a>
    <a href="/user/updateUser" target="iframe2">
        <li>系统设置</li>
    </a>
</ul>


</body>
</html>
