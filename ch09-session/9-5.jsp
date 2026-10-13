<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9-5.jsp</title>
</head>
<body>
<%
    HttpSession httpSession = request.getSession();
%>
세션 아이디1 : <%= session.getId() %><br>
세션 아이디2 : <%= httpSession.getId() %>
</body>
</html>
