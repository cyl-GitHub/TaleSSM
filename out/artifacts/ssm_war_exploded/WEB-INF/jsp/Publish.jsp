<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>发布文章</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/page1.css">
    <link href="${requestScope.ContextPath}/page/css/bootstrap.min.css" rel="stylesheet">
    <script src="${requestScope.ContextPath}/page/js/jquery.min.js"></script>
    <script src="${requestScope.ContextPath}/page/js/bootstrap.min.js"></script>
</head>
<body>

<div class="Publish">
    <p>发布文章</p>
    <form class="bs-example bs-example-form Publish_form" role="form"
          action="/article/doPublish">
        <div class="input-group Publish_div1">
            <input type="text" class="form-control input-group-sm" placeholder="文章标题" name="title">
        </div>
        <br>
        <div class="input-group Publish_div2">
            <input type="text" class="form-control input-group-sm" placeholder="请输入文件标签"
                   name="flag">
        </div>


        <div class="input-group Publish_div3">
            <select name="type" class="form-control input-group-sm">
                <option value="--请选择分类--" selected="selected">--请选择分类--</option>
                <c:forEach items="${types}" var="type">
                    <option value="${type.name}">${type.name}</option>
                </c:forEach>

            </select>
        </div>

        <br>
        <div class="form-group Publish_div4">
            <textarea class="form-control" rows="15" name="content"></textarea>
        </div>


        <div class="form-group Publish_div5">
            <input class="btn-info btn-default Publish_submit1" type="submit" value="保存文章">
        </div>
    </form>


</div>


</body>
</html>
