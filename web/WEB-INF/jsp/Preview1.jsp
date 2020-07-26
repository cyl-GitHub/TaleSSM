<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cyl27
  Date: 2019/5/16
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预览</title>
    <link rel="stylesheet" href="/page/css/Preview.css">
</head>
<body>
<div class="allpage">
    <div class="up">
        <input type="button" onclick="javascript:history.back(-1);" value="返回上一页">
    </div>
    <div class="line"></div>
    <div class="down">
        <div class="allarticle">
            <div class="title">
                <p class="p1">${article.title}</p>
                <p class="p2">发布于${article.createTime}/${article.type}/${article.pageView}条评论</p>
            </div>
            <div class="line"></div>

            <div class="content">
                ${article.content}
            </div>
        </div>


    </div>

</div>
</body>
</html>
