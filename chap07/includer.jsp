<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/12
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType ="text/html; charset=utf-8"%>
<html>
<head>
  <title>include 디렉티브</title>
</head>
<body>
<%
  int number = 10;
%>
<%@ include file="/chap07/includee.jspf"%>

공통변수 DATAFOLDER  = "<%=dataFolder%>"
</body>
</html>
