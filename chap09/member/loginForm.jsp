<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
  <title>로그인폼</title>
</head>
<body>

<form action="<%=request.getContextPath()%>/member/login.jsp">
  아이디 <input type="text" name="id" size="10">
  암호 <input type="password" name="password" size="10">
  <input type="submit" value="로그인">
</form>
</body>
</html>
