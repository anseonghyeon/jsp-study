<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.io.FileWriter" %><%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/14
  Time: 11:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        .box {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
    </style>
</head>
<body>

</body>
</html>
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
                <div class="box">

                    <h1>현재"<%=memberId%>"로 접속 중입니다</h1>
                    <div style="height: 600px; width: 600px; background-color: cornflowerblue">


                    </div>
                </div>
<%
                }
            }
        }

    }
    reader.close();
%>

