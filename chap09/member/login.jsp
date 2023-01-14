<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%--<%@ page import="util.Cookies" %>--%>
<%@ page import="java.net.URLEncoder" %>
<%
  String id = request.getParameter("id");
  String password = request.getParameter("password");
  Cookie cookie = new Cookie("AUTH", URLEncoder.encode(id,"utf-8"));
  cookie.setPath("/");
  cookie.setMaxAge(-1);
  if(id.equals(password)) {
    response.addCookie(cookie);

%>
<html>
<head>
  <title>로그인성공</title>
</head>
<body>
로그인에 성공했습니다.
</body>
</html>
<%
  } else {
%>
<script>
  alert("로그인에 실패하였습니다.");
  history.go(-1);
</script>
<%
  }
%>