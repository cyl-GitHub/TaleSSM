<%--
  Created by IntelliJ IDEA.
  User: cyl27
  Date: 2019/6/21
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/page/css/register.css">
    <link href="${pageContext.request.contextPath}/page/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/page/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/page/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function check() {
            if (pass.value != pass1.value) {
                check_tip.innerHTML = "<font color=red>两次输入的密码不相符</font>";
            } else {
                check_tip.innerHTML = "<font color=blue></font>";
            }
        }
    </script>

</head>
<body>

<div class="allpage">
    <div class="register">
        <div class="row" style="padding: 91px 100px 19px 50px;">
            <form class="form-inline" role="form" action="/user/doRegister" method="post">
                <div class="form-group">
                    <label class="sr-only" for="name">博客名</label>
                    <input type="text" class="form-control" placeholder="Blog name" id="name" name="name">
                </div>
                <div class="form-group">
                    <label class="sr-only" for="pass">密码</label>
                    <input type="password" class="form-control" placeholder="Password" id="pass" name="password" onkeyup="check()">
                </div>
                <div class="form-group">
                    <label class="sr-only" for="pass1">确认密码</label>
                    <input type="password" class="form-control" placeholder="Confirm Password" name="password1" id="pass1" onkeyup="check()">
                </div>
                <div id=check_tip></div>
                <div class="form-group">
                    <input class="btn btn-default" type="submit" value="提交" id="submit1">
                    <input class="btn btn-default" type="reset" value="重置">
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
