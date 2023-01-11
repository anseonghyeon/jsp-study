<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/11
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
  <title>파라미터 출력</title>
</head>
<body>

name 파라미터 값:
<% try { %>
<%= request.getParameter("name").toUpperCase()%>
<% } catch(Exception ex) { %>
name 파라미터가 올바르지 않습ㄴ디ㅏ.
<% } %>
</body>
</html>
