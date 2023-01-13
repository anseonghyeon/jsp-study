<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/13
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<%--<%@ page import ="java.net.URLEncoder" %>--%>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
  <title>쿠키 목록</title>
</head>
<body>
쿠키 목록<br>
<%
  Cookie[] cookies = request.getCookies();
  if(cookies != null && cookies.length > 0) {
    for(int i = 0; i < cookies.length; i++) {
%>
  <%=cookies[i].getName()%> =
  <%=URLDecoder.decode(cookies[i].getValue(),"utf-8")%><br>
<%
    }
  } else {
%>
쿠키가 존재하지 않습니다.
<%
  }
%>
</body>
</html>