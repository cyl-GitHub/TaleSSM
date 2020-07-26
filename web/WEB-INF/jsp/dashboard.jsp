<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>仪表盘</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/Dashboard.css">
    <link href="${requestScope.ContextPath}/page/css/bootstrap.min.css" rel="stylesheet">
    <script src="${requestScope.ContextPath}/page/js/jquery.min.js"></script>
    <script src="${requestScope.ContextPath}/page/js/bootstrap.min.js"></script>
</head>
<body>

<div class="dashboard">
    <p>Tale仪表盘</p>
    <div class="dashboard_content">
        <a href="#">
            <div class="dashboard_content1">
                <div class="Count">
                    发表了<p>${articleCount}</p>篇文章
                </div>
            </div>
        </a>

        <a href="#">
            <div class="dashboard_content2">
                <div class="Count">
                    收到了<p>${messageCount}</p>条留言
                </div>
            </div>
        </a>

        <a href="#">
            <div class="dashboard_content3">
                <div class="Count">
                    上传了<p>${accessoriesCount}</p>个附件
                </div>
            </div>
        </a>

        <a href="#">
            <div class="dashboard_content4">
                <div class="Count">
                    友链了<p>${friendCount}</p>个好友
                </div>
            </div>
        </a>

    </div>
</div>

<div class="new_article">
    <p>
        最新文章
    </p>
    <div class="new_article_title">
        <table>
            <c:forEach items="${newArticles}" var="article">
                <div class="new_article1">
                    <div class="newArticleTitle"><a href="#">${article.title}</a></div>
                    <div class="newArticlePageView">${article.pageView}</div>
                </div>

            </c:forEach>
        </table>

    </div>

</div>

<div class="new_message">
    <p>
        最新留言
    </p>
    <div class="new_article_title">
        <table>
            <c:forEach items="${newMessages}" var="message">
                <div class="new_article1">
                    <div class="newArticleTitle">${message.v_name}
                        于${message.createTime}发表:${message.message}</div>
                </div>

            </c:forEach>
        </table>
    </div>
</div>
<div class="footer">2019©Tale</div>

</body>
</html>
