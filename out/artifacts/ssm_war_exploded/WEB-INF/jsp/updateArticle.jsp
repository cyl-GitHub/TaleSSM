<%--
  Created by IntelliJ IDEA.
  User: cyl27
  Date: 2019/5/13
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改文章</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/page1.css">
    <link href="${requestScope.ContextPath}/page/css/bootstrap.min.css" rel="stylesheet">
    <script src="${requestScope.ContextPath}/page/js/jquery.min.js"></script>
    <script src="${requestScope.ContextPath}/page/js/bootstrap.min.js"></script>
</head>
<body>

<div class="Publish">
    <p>修改文章</p>
    <form class="bs-example bs-example-form Publish_form" role="form"
          action="/article/doUpdate">
        <input type="hidden" value="${article.id}" name="id">
        <div class="input-group Publish_div1">
            <input type="text" class="form-control input-group-sm" value="${article.title}" name="title">
        </div>
        <br>
        <div class="input-group Publish_div2">
            <input type="text" class="form-control input-group-sm" value="${article.flag}"
                   name="flag">
        </div>

        <div class="input-group Publish_div3">
            <input type="text" class="form-control " value="${article.type}" name="type">
        </div>
        <br>
        <div class="form-group Publish_div4">
            <textarea class="form-control" rows="15" name="content">${article.content}</textarea>
        </div>

        <div class="form-group Publish_div5">
            <input class="btn-info btn-default Publish_submit1" type="submit" value="保存文章">
        </div>
    </form>
</div>


</body>
</html>
