<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/11
  Time: 3:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
  <title>layout1</title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2">
      <jsp:include page="/chap07/module/top.jsp" flush="false"/>

    </td>
  </tr>
  <tr>
    <td width="100" valign="top">
      <jsp:include page="/chap07/module/left.jsp" flush="false"/>
    </td>
    <td width="300" valign="top">
      <!-- 내용 부분: 시작 -->
      레이아웃 1
      <br><br><br>
      <!-- 내용 부분: 끝 -->
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <jsp:include page="/chap07/module/bottom.jsp" flush="false"/>
    </td>
  </tr>
</table>
</body>
</html>
