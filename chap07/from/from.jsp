<%--
  Created by IntelliJ IDEA.
  User: anseonghyeon
  Date: 2023/01/12
  Time: 7:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html charset=utf-8"%>
<%--
  <jsp:foward> 액션 태그를 실행함ㄴ
  생성했던 출력 결과는 모두 제거된다.
--%>
<html>
  <head>
    <title>from.jsp의 제목</title>
  </head>
  <body>
    이 페이지는 from.jsp가 생성한 것입니다.

    <jsp:forward page="/chap07/to/to.jsp" />
  </body>
</html>
