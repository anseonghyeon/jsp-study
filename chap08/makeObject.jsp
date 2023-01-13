<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/13
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="member" scope="request" class="classes.chap08.member.MemberInfo"/>
<%
  member.setId("madvirus");
  member.setName("최범균");
%>
<jsp:forward page="useObject.jsp"/>