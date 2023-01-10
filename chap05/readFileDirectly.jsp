<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/10
  Time: 6:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType ="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<html>
<head>
  <title>절대 경로 사용하여 자원 읽기</title>
</head>
<body>
<%
  char[] buff = new char[128];
  int len = -1;

  String filePath = "/home/anseonghyeon/apache-tomcat-9.0.70/webapps/jsp-study/chap05";
  try(InputStreamReader fr = new InputStreamReader(
          new FileInputStream(filePath), "UTF-8"
  )) {
    while ((len = fr.read(buff)) != -1) {
      out.print(new String(buff,0,len));
    }
  } catch (IOException ex) {
    out.println("익셉션 발생: " + ex.getMessage());
  }
%>
</body>
</html>
