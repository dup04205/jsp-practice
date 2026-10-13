<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 로그아웃</title>
</head>
<body>
<%
  Cookie[] cookies = request.getCookies();
  if (cookies != null) {
    for (Cookie c : cookies) {
      if (c.getName().equals("ID")) {
        c.setMaxAge(0);
        response.addCookie(c);
      }
    }
  }
%>
<h3>로그아웃 되었습니다.</h3>
<h3><a href="8-10.jsp">로그인 확인</a></h3>
</body>
</html>
