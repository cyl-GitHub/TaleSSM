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
    <title>文章</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/Preview.css">
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
            <div class="title">
                <p class="p1">${article.title}</p>
                <p class="p2">发布于${article.createTime}/${article.type}/${article.pageView}条评论</p>
            </div>
            <div class="line"></div>

            <div class="content">
                ${article.content}
            </div>
        </div>


        <div class="review">
            <form action="/message/insert?id=${article.id}" method="post">
                欢迎添加评论: <input type="text" placeholder="评论" name="message">
                <input type="submit" value="提交">
            </form>


            <table>
                <c:forEach items="${messages}" var="message">
                    <div class="new_article1">
                        <div class="newArticleTitle">${message.v_name}
                            于${message.createTime}评论:${message.message}</div>
                    </div>

                </c:forEach>
            </table>
        </div>
    </div>

</div>
</body>
</html>
