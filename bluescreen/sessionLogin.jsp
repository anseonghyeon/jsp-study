<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileNotFoundException" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.FileReader" %><%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
  String id = request.getParameter("id");
  String password = request.getParameter("password");

  String col = null;

  BufferedReader reader = null;
  try {
    String filePath = application.getRealPath("/user.txt");
    reader = new BufferedReader(new FileReader(filePath));
    while (true) {
      String str = reader.readLine();
      String[] s = str.split(",");

      if(str == null) {
        break;
      }
      if(id.equals(s[0])) {
        if(password.equals(s[1])) {
          col = str;
        }

      }
    }
  } catch (FileNotFoundException e) {
    out.println("파일이 존재하지 않음");
  } catch (IOException e) {
    out.println("파일을 읽을 수 없음");
  } finally {
    reader.close();
  }

  if(id.equals(col)) {
    session.setAttribute("MEMBERID",id);
%>
<html>
<head>
  <title>회원 페이지</title>
</head>
<body>
로그인에 성공했습니다.<br>
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
