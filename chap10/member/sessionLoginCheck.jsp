<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
  String memberId = (String)session.getAttribute("MEMBERID");
  boolean login = memberId == null ? false : true;

%>
<html>
<head>
  <title>로그인여부 검사</title>
</head>
<body>

<%
  if(login) {
%>
아이디 "<%=memberId%>"로 로그인 한 상태
<form action="sessionLogout.jsp" method="post" >
  <input type="submit" value="logout">
</form>
<%
  } else {
%>
로그인하지 않은 상태
<%
  }
%>
</body>
</html>