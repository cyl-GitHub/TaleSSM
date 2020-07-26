<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cyl27
  Date: 2019/5/14
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章管理</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/article.css">
    <link href="${requestScope.ContextPath}/page/css/bootstrap.min.css" rel="stylesheet">
    <script src="${requestScope.ContextPath}/page/js/jquery.min.js"></script>
    <script src="${requestScope.ContextPath}/page/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table table-bordered">
    <thead>
    <tr>
        <th>文章标题</th>
        <th>发布时间</th>
        <th>浏览量</th>
        <th>所属分类</th>
        <th>标签</th>
        <th>发布状态</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${articles}" var="article">
        <tr>
            <td>${article.title}</td>
            <td>${article.createTime}</td>
            <td>${article.pageView}</td>
            <td>
                <c:forEach items="${article.type}" var="type">
                    ${type}
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${article.flag}" var="flag">
                    ${flag}
                </c:forEach>
            </td>
            <td>${article.condition}</td>
            <td>
                <a href="/article/update?id=${article.id}">修改</a>
                <a href="/article/delete?id=${article.id}">删除</a>
                <a href="/article/preview?id=${article.id}">预览</a>
            </td>
        </tr>


    </c:forEach>

    <tr>
        <td colspan="8" align="center">
            当前${pageNumber}/${totalPage }页&nbsp;&nbsp;
            <a href="/article/doPage?pageNumber=1">首页</a>
            <a href="/article/doPage?pageNumber=${pageNumber-1}">上一页 </a>
            <a href="/article/doPage?pageNumber=${pageNumber+1}">下一页 </a>
            <a href="/article/doPage?pageNumber=${totalPage}">末页</a>
        </td>
    </tr>
    </tbody>
</table>
<div class="footer">2019©Tale</div>
</body>
</html>
