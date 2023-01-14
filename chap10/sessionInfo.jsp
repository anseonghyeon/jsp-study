<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 6:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page session="true"%>
<%@ page import ="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
  Date time = new Date();
  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

%>
<html>
<head>
  <title>세션정보</title>
</head>
<body>
세션ID: <%=session.getId()%> <br>
<%
  time.setTime(session.getCreationTime());
%>
세션생성시간: <%=formatter.format(time)%><br>
<%
  time.setTime(session.getLastAccessedTime());
%>
최근접근시간: <%=formatter.format(time)%>
</body>
</html>
