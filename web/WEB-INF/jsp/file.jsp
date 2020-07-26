<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>文件上传</title>
    <link rel="stylesheet" href="${requestScope.ContextPath}/page/css/file.css">
    <link href="${requestScope.ContextPath}/page/css/bootstrap.min.css" rel="stylesheet">
    <script src="${requestScope.ContextPath}/page/js/jquery.min.js"></script>
    <script src="${requestScope.ContextPath}/page/js/bootstrap.min.js"></script>
</head>

<body>
<fieldset>
    <legend>
        上传单个文件
    </legend>
    <!-- 文件上传时必须要设置表单的enctype="multipart/form-data"-->
    <form action="/file/doUpload" method="post" enctype="multipart/form-data">
        上传文件：
        <input type="file" name="file">
        <br>
        <input type="submit" value="上传">
    </form>
</fieldset>
<br>
<table class="table table-bordered">
<thead>
<tr>
    <th>文件名</th>
    <th>文件地址</th>
</tr>
</thead>
<tbody>

<c:forEach items="${accessories}" var="accessorie">
<tr>
    <td>${accessorie.name}</td>
    <td>${accessorie.address}</td>
</tr>
</c:forEach>
</tbody>
</table>

</body>
</html>
