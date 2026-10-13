<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, com.member.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member 레코드 update 결과</title>
</head>
<body>
<div align="center">
<%
    request.setCharacterEncoding("UTF-8");
    MemberDTO mb = new MemberDTO();
    mb.setId(Integer.parseInt(request.getParameter("id")));
    mb.setPass(request.getParameter("pass"));
    mb.setName(request.getParameter("name"));
    mb.setPhone(request.getParameter("phone"));
    mb.setAddress(request.getParameter("address"));
    new MemberDAO().updateOne(mb);
%>
<h3>레코드를 수정했습니다.</h3>
<h3><a href="11-5.jsp">초기화면</a></h3>
</div>
</body>
</html>
