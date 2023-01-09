<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/09
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
  <title>pageContext 기본 객체</title>
</head>
<body>
<%
  HttpServletRequest httpsRequest = (HttpServletRequest)pageContext.getRequest();
%>
request 기본 객체와 pageContext.getRequest()의 동일 여부:

<%= request == httpsRequest%>

<br>

pageContext.getOut() 메서드를 사용한 데이터 출력:

<% pageContxt.getOut().println("안녕하세요!"); %>
</body>
</html>
