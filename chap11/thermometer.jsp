<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/02/01
  Time: 9:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="chap11.Thermometer"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
    Thermometer thermometer = new Thermometer();
    request.setAttribute("t",thermometer);
%>
<html>
<head>
    <title>온도 변환 예제</title>
</head>
<body>
    ${t.setCelsius("서울",27.3)}
    서울 온도: 섭씨 ${t.getCelsius('서울')}도 / 화씨 ${t.getFahrenheit('서울')}

    <br>
    정보: ${t.info}
</body>
</html>