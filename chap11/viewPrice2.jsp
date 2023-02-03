<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/02/02
  Time: 9:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType ="text/html; charset=utf-8"%>
<%@ page import="util.FormatUtil" %>
<%
    request.setAttribute("price",12345L);
%>
<html>
<head>
    <title>EL 함수 호출</title>
</head>
<body>
가격은 <b>${FormatUtil.number(price,'#,##0')}</b>원 입니다.
${Long.parseLong('10')}
<br>
${factorial = (n) -> n == 1 ? 1 : n * factorial(n-1);''}
${factorial(5)}
<br>
<%-- 람다식의 파라미터가 한 개인 경우 파라미터의 괄호를 생략해도 된다. --%>
${factorial = n -> n == 1 ? 1 : n * factorial(n-1); ''}
${factorial(6)}
<%--<c:set var="lst" value="<%=java.util.Arrays.asList(1,2,3,4,5)%>"/>--%>
<%--<c:forEach var="val" items="${lst}">--%>
<%--    <c:set var="sum" value="${sum+val}"/>--%>
<%--    ${sum}--%>
<%--</c:forEach>--%>
<%--<c:set var="lst" value="<%=java.util.Arrays.asList(1,2,3,4,5)%>"/>--%>
<%--<c:set var="sum" value="${lst.stream().sum()}"/>--%>

<%--${lst.stream().filter(x->x%2==0).map(x->x*x).tolist()}--%>
${lst=[1,2,3,4,5];''}
${lst.stream().sum()}
<%
    java.util.Map<String, String> map = new java.util.HashMap<>();
    map.put("code1","코드1");
    map.put("code2","코드2");
    request.setAttribute("map",map);

%>
${map.entrySet().stream().map(entry->entry.value).toList()}
<br>
${collection.stream().filter(x->x%2==0).toList().sum()}
</body>
</html>