<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 5:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%--<%@ page import ="util.Cookies"%>--%>
<%
  Cookie cookie = new Cookie(request);
%>
<html>
<head>
  <title>로그인여부 검사</title>
</head>
<body>
<%
  if(cookie.exists("AUTH")) {
%>
아이디 "<%=cookie.getValue("AUTH")%>"로 로그인 한 상태
<%
  } else {
%>
로그인하지 않은 상태
<%
  }
%>

</body>
</html>