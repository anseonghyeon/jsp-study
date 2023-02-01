<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/02/01
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<%
    request.setAttribute("name","최범균");
%>
<html>
<head>
    <title>EL Object</title>
</head>
<body>

요청 URL: ${pageContext.request.requestURL}<br>
request의 name 속성: ${requestScope.name}<br>
code 파라미터: ${param.code}

${1+1;10+10}
</body>
</html>
