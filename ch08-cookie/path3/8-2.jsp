<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 읽기 - path3</title>
</head>
<body>
<h3>path3 폴더에서 보이는 쿠키</h3>
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
