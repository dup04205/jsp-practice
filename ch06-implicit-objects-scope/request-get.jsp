<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request-get.jsp</title>
</head>
<body>
<h2>request 영역 데모</h2>
<p>forward된 페이지에서 읽기: <%= (String) request.getAttribute("user") %></p>
</body>
</html>
