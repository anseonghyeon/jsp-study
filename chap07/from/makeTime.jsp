<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/13
  Time: 3:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Calendar"%>
<%
  Calendar cal = Calendar.getInstance();
  request.setAttribute("time",cal);
%>
<jsp:forward page="../to/viewTime.jsp"/>
