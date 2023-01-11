<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/11
  Time: 11:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import ="java.io.*"%>
<%@ page import ="java.net.URL"%>
<html>
<head>
  <title>application rㅣ본 객체 사용하여 자원 읽기2</title>
</head>
<body>
<%
  String resourcePath = "chap05/message/notice.txt";
  char[] buff = new char[128];
  int len = -1;
  URL url = application.getResource(resourcePath);
  try(InputStreamReader br = new InputStreamReader(url.openStream(),"UTF-8")) {
    while((len = br.read(buff)) != -1) {
      out.print(new String(buff,0,len));
    }
  } catch (IOException ex) {
    out.println("익셉션 발생:"+ex.getMessage());
  }
%>
</body>
</html>