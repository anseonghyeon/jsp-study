<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/13
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import ="java.net.URLEncoder" %>
<%
  Cookie cookie1 = new Cookie("id","madvirus");
  cookie1.setDomain(".somehost.com");
  response.addCookie(cookie1);

  Cookie cookie2 = new Cookie("only","onlycookie");
  response.addCookie(cookie2);

  Cookie cookie3 = new Cookie("invalid","invalidcookie");
  cookie3.setDomain("javacan.tisory.com");
  response.addCookie(cookie3);
%>
<html>
<head>
  <title>쿠키 생성</title>
</head>
<body>
다음과 같이 쿠키를 생성했습니다.<br>
<%=cookie1.getName()%> = <%=cookie1.getValue()%>
[<%=cookie1.getDomain()%>]
<br>
<%=cookie2.getName()%>=<%=cookie2.getValue()%>
[<%=cookie2.getDomain()%>]
<br>
<%=cookie3.getName()%>=<%=cookie3.getValue()%>
[<%=cookie3.getDomain()%>]
</body>
</html>