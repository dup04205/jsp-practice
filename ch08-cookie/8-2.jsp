<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 읽기</title>
</head>
<body>
<%
  Cookie[] cookies = request.getCookies();
  if (cookies != null) {
    for (Cookie c : cookies) {
      out.print(c.getName() + ":" + c.getValue() + "<br>");
    }
  }
%>
</body>
</html>
