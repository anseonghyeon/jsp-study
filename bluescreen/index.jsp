<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/08
  Time: 9:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>시작페이지</title>
    <style>
        .inner {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
    </style>
</head>
<body>
<div class="inner">
    <h1>LOGIN</h1>
    <form action="login.jsp" method="post">
        ID<input type="text" name="id">
        <br>
        PW<input type="password" name="pw">
        <br>
        <input type="submit" name="login"  value="로 그 인">
        <input type="submit" name="signup" value="회 원 가입">
    </form>
</div>

</body>
</html>
