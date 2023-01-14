<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/13
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
  Cookie cookie = new Cookie("oneh","ltime");
  cookie.setMaxAge(60*60);
  response.addCookie(cookie);

%>
<html>
<head>
  <title>쿠키유효시간설정</title>
</head>
<body>
유효시간이 1시간인 oneh 쿠키 생성.
</body>
</html>
