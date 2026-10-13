<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<%
    String id = (String) session.getAttribute("id");
    if (id != null) session.invalidate();
%>
<h3>로그아웃 되었습니다.</h3>
<h3><a href="index.jsp">로그인 화면으로 돌아가기</a></h3>
</body>
</html>
