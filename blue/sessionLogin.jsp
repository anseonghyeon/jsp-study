<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %><%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 11:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    String filePath = application.getRealPath("/user.txt");
    BufferedReader reader = new BufferedReader(new FileReader(filePath));
    String str =null;
    while((str = reader.readLine()) != null) {
        String[] s = str.split("\\s");
        if(s[0].equals(id)) {
            if(s[1].equals(password)) {
                session.setAttribute("MEMBERID",id);
                String memberId = (String)session.getAttribute("MEMBERID");
                boolean login = memberId == null ? false : true;
                if(login) {
%>
                    현재"<%=memberId%>"로 접속 중입니다

<%
                }
            }
        }

    }
    reader.close();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
