<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/08
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    if(id != null && id.equals("ash")) {
%>
        <%=  id + " 환영합니다"%>
    } else {

        <%= "로그인 실패"%>
<%
    }
%>
</body>
</html>
