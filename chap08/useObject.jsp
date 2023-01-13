<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/13
  Time: 4:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="member" scope="request" class="chap08.member.MemberInfo" />
<html>
<head>
  <title>인사말</title>
</head>
<body>
<%=member.getName()%> (<%=member.getId()%>) 회원님
안녕하세요.
</body>
</html>
