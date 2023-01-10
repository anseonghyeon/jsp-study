<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/10
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
  <title>초기화 파라미터 읽어오기</title>
</head>
<body>
초기화 파라미터 목록:
<ul>
  <%
    Enumeration<String> initParamEnum = application.getInitParameterNames();
    while(initParamEnum.hasMoreElements()) {
      String initParamName = initParamEnum.nextElement();
  %>
  <li>
    <%= initParamName %> = <%= application.getInitParameter(initParamName)%>
    <%
      }
    %>
  </li>
</ul>
</body>
</html>

