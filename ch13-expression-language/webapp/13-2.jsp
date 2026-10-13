<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 내장 객체 (실행: 13-2.jsp?code=1234)</title>
</head>
<body>
<% request.setAttribute("name", "Jimmy"); %>
요청 URI : ${pageContext.request.requestURI}<br>
request 속성의 값 : ${requestScope.name}<br>
code 속성의 값 : ${param.code}
</body>
</html>
