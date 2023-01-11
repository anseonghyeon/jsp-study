<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/11
  Time: 1:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
  <title>파라미터 출력</title>
</head>
<body>

name 파라미터 값: <%= request.getParameter("name").toUpperCase()%>

</body>
</html>