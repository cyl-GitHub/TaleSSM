<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cyl27
  Date: 2019/5/15
  Time: 0:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>系统设置</title>
    <link rel="stylesheet" href="/page/css/SetUp.css">
    <script type="text/javascript">
        function check() {
            if (password2.value != password3.value) {
                check_tip.innerHTML = "<font color=red>两次输入的密码不相符</font>";
            } else {
                check_tip.innerHTML = "<font color=blue></font>";
            }
        }

        window.onload = function () {
            if (!${i}) {
                alert("密码修改成功");
            }
        }
    </script>
</head>
<body>

<p class="p1">系统设置</p>
<div class="ModifyPassword">
    <div class="ModifyPassword_up">
        <p>修改密码</p>
    </div>
    <div class="ModifyPassword_down">
        <form action="/user/doUpdateUser" method="post">
            原密码: &nbsp;&nbsp;&nbsp;<input type="password" name="password1">
            <br>
            <c:if test="${i}">
                <div style="color: red;">原密码输入错误</div>
            </c:if>
            新密码: &nbsp;&nbsp;&nbsp;<input type="password" name="password2" id="password2" onkeyup="check()">
            <br>
            确认密码: <input type="password" name="password3" id="password3" onkeyup="check()">
            <div id=check_tip></div>
            <br>
            <input type="submit" value="确认">
            <input type="reset" value="重置">
        </form>
    </div>
</div>

</body>
</html>
