<%@ page import="java.io.FileOutputStream" %><%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/08
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>두번째페이지</title>
</head>
<body>
<%
    String login = request.getParameter("login");
//    String signup = request.getParameter("signup");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
//    FileOutputStream output = new FileOutputStream("..\\..\\u\\user.txt");
    if(login != null && login.equals("login")) {
        if(id != null && id.equals("anseonghyeon")) {
            if (pw != null && pw.equals("0927")) {
%>
                <%= id+"님 안녕하세요"%>
<%
            }
        }
    }
%>

</body>
</html>
