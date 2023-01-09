<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/09
  Time: 1:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page buffer="1kb" autoFlush="false" %>
<html>
<head>
    <title>autoFlush 속성값 false 예제</title>
</head>
<body>
<% for(int i = 0; i < 1000; i++) {
%>
    <h1>1234</h1>
<%
}
%>
</body>
</html>
