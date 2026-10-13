<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, com.member.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member 레코드 수정하기</title>
</head>
<body>
<div align="center">
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    MemberDTO mb = new MemberDAO().selectOne(Integer.parseInt(id));
%>
<form action="11-7.jsp" method="post">
<table border=1>
  <tr><th>아이디</th><td><input type="text" name="id" value="<%= mb.getId() %>"></td></tr>
  <tr><th>비밀번호</th><td><input type="password" name="pass" value="<%= mb.getPass() %>"></td></tr>
  <tr><th>이름</th><td><input type="text" name="name" value="<%= mb.getName() %>"></td></tr>
  <tr><th>전화번호</th><td><input type="text" name="phone" value="<%= mb.getPhone() %>"></td></tr>
  <tr><th>주소</th><td><input type="text" name="address" value="<%= mb.getAddress() %>"></td></tr>
  <tr><td colspan=2 align=center><input type="submit" value="확인"></td></tr>
</table>
</form>
</div>
</body>
</html>
