<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/08
  Time: 9:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>로그인 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
    <h1 style="color: cornflowerblue">블루스크린 로그인</h1>
    <form action="<%=request.getContextPath()%>/sessionLogin.jsp" method="post" >
        ID<input type="text" name="id" class="form-control">
        <br>
        PW<input type="password" name="password" class="form-control">
        <br>
        <input type="submit" name="login"  value="로 그 인" class="btn btn-outline-primary">
        <input type="submit" name="signup" value="회 원 가 입" class="btn btn-outline-primary">
    </form>
</div>
</body>
</html>
