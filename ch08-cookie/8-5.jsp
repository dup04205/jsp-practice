<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
<%
  Cookie[] cookies = request.getCookies();
  if (cookies != null) {
    for (Cookie c : cookies) {
      if (c.getName().equals("name")) {
        c.setMaxAge(0);
        response.addCookie(c);
      }
    }
  }
%>
<a href="8-2.jsp">쿠키 확인하기</a>
</body>
</html>
