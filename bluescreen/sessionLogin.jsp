<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<title>회원 페이지</title>
<%
  String id = request.getParameter("id");
  String password = request.getParameter("password");

  if(id.equals(password)) {
    session.setAttribute("MEMBERID",id);
%>
<html>
<head>
  <title>로그인성공</title>
</head>
<body>
로그인에 성공했습니다.
<jsp:include page="sessionLoginCheck.jsp"></jsp:include>
</body>
</html>
<%
  } else {
%>
<script>
  alert("로그인에 실패하였습니다.");
  history.go(-1);
</script>
<%
  }
%>
