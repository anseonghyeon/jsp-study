<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/09
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page buffer="8kb" autoFlush="false" %>
<html>
  <head>
    <title>버퍼 정보</title>
  </head>
  <body>
  버퍼 크기: <%= out.getBufferSize()%><br>
  남은 크리: <%= out.getRemaining()%><br>
  auto flush: <%= out.isAutoFlush()%><br>
  </body>
</html>
