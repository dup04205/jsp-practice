<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 값 변경</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("name", "james");
    response.addCookie(cookie);
%>
<a href="8-2.jsp">쿠키 확인하기</a>
</body>
</html>
