<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cyl27
  Date: 2019/5/15
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tale</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/front.css">

</head>
<body>
<div class="allpage">
    <div class="up">
        <div class="logo">

        </div>
        <div class="up_right">
            <a href="#">归档</a>&nbsp;&nbsp;&nbsp;
            <a href="#">友链</a>&nbsp;&nbsp;&nbsp;
            <a href="#">关于</a>
        </div>
    </div>
    <div class="line"></div>
    <div class="down">
        <div class="allarticle">
            <c:forEach items="${articles}" var="friend">

                <a href="/front/preview?id=${friend.id}">
                    <div class="article">
                        <div class="article_img"></div>
                        <div class="article_title">
                                ${friend.title}
                        </div>
                        <div class="article_type">
                                ${friend.type}
                        </div>
                    </div>
                </a>

            </c:forEach>


        </div>
    </div>

</div>
</body>
</html>
