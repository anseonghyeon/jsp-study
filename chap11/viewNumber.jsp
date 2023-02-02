<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/02/02
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/el-functions.tld"%>
<%
  request.setAttribute("price",12345);

%>
<html>
<head>
  <title>EL 함수 호출</title>
</head>
<body>
오늘은 <b>${elfunc:formatNumber(price,'#,##0')}</b>
</body>
</html>
