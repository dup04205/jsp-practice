<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, com.member.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member 레코드 삭제하기</title>
</head>
<body>
<div align="center">
<%
    request.setCharacterEncoding("UTF-8");
    new MemberDAO().deleteOne(Integer.parseInt(request.getParameter("id")));
%>
<h3>레코드를 삭제했습니다.</h3>
<h3><a href="11-5.jsp">초기화면</a></h3>
</div>
</body>
</html>
