<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9-3.jsp</title>
</head>
<body>
<h3>세션 아이디: <%= session.getId() %></h3>
name : <%= session.getAttribute("name") %><br>
address : <%= session.getAttribute("address") %>
</body>
</html>
