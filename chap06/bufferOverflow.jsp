<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/11
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page buffer="1kb"%>
<%@ page errorPage ="/error/viewErrorMessage.jsp"%>
<html>
<head>
  <title>버퍼 플러시 이후 에러 발생 결과</title>
</head>
<body>
<%
   for(int i =0; i < 300; i++) {
     out.println(i);
   }
%>
<%= 1/0%>
</body>
</html>