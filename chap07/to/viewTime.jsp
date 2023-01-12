<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/13
  Time: 3:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html charset=utf-8"%>
<%@ page import="java.util.Calendar"%>
<html>
  <head>
    <title>현재 시간</title>
  </head>
  <body>
    <%
      Calendar cal = (Calendar) request.getAttribute("time");
    %>
    현재 시간은 <%= cal.get(Calendar.HOUR)%>시
    <%= cal.get(Calendar.MINUTE)%>분
    <%= cal.get(Calendar.SECOND)%>초 입니다.
  </body>
</html>