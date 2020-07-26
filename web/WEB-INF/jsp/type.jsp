<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cyl27
  Date: 2019/5/14
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分类标签</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/type.css">
</head>
<body>
<div class="flag_type">
    <p class="flag_type_p">分类/标签管理</p>
    <div class="flag_type_left">
        <p class="flag_type_left_up">分类列表</p>
        <div class="flag_type_left_down">
            <c:forEach items="${types}" var="type">
                ${type.name}
            </c:forEach>
        </div>
    </div>
    <div class="flag_type_right">
        <div class="flag_type_right_up">标签列表</div>
        <div class="flag_type_right_down">
            <c:forEach items="${flags}" var="flag">
                ${flag.name}
            </c:forEach>
        </div>

    </div>

    <div class="saveType">
        <form action="/type/insertType" method="post">
            <div class="saveDiv1">
                <input type="text" name="name" placeholder="请输入分类名称">
            </div>

            <div class="saveDiv2"><input type="submit" value="保存分类" class="saveType_submit"></div>
        </form>
    </div>
</div>
</body>
</html>
