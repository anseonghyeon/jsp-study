<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/13
  Time: 7:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder" %>
<%
  Cookie cookie = new Cookie("name",IRLEncoder.encode("최범균","utf-8"));
  response.addCookie(cookie);
%>
<html>
<head>
  <title>쿠키생성</title>
</head>
<body>
<%=cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue()%>"
</body>
</html>