<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("name", "jimmy");
    cookie.setMaxAge(3600);
    response.addCookie(cookie);
%>
쿠키가 생성되었습니다.<br>
<a href="8-2.jsp">쿠키 확인하기</a>
</body>
</html>
