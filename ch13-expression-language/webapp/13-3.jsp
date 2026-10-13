<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-3.jsp</title>
</head>
<body>
<%
    Cookie c1 = new Cookie("name", "Jimmy");
    Cookie c2 = new Cookie("phone", "010-1111-2222");
    response.addCookie(c1);
    response.addCookie(c2);
%>
<a href="13-4.jsp">쿠키 확인하기</a>
</body>
</html>
