<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5-2.jsp</title>
</head>
<body>
<ul>
  <li>문서 경로 : <%=request.getContextPath() %>
  <li>서버 주소 : <%=request.getServerName() %>
  <li>서버 포트 : <%=request.getServerPort() %>
</ul>
</body>
</html>
