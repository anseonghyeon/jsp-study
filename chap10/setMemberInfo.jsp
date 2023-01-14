<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 7:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
  session.setAttribute("MEMBERID","madvirus");
  session.setAttribute("NAME","최범균");

%>
<html>
<head>
  <title>세션에 정보 저장</title>
</head>
<body>
세션에 정보를 저장하였습니다.
<%
  String name = (String)session.getAttribute("NAME");

%>
회원명: <%= name%>
</body>
</html>