<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/12
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
  String code = request.getParameter("code");
  String viewPageURI = null;
  
  if(code.equals("A")) {
    viewPageURI = "/chap07/viewModule/a.jsp";
  } else if(code.equals("B")) {
    viewPageURI = "/chap07/viewModule/b.jsp";
  } else if(code.equals("C")) {
    viewPageURI = "/chap07/viewModule/c.jsp";
  }
%>
<jsp:forward page="<%=viewPageURI%>"></jsp:forward>