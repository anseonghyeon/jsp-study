<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/11
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import ="java.util.Enumeration"%>
<html>
<head>
  <title>application 기본 객체 속성 보기</title>
</head>
<body>
<%
  Enumeration<String> attrEnum = application.getAttributeNames();
  while (attrEnum.hasMoreElements()) {
    String name = attrEnum.nextElement();
    Object value =  application.getAttribute(name);
%>
application 속성: <b><%=name%></b> = <%=value%> <br>
<%
  }
%>
</body>
</html>