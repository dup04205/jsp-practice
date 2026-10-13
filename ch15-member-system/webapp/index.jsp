<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템</title>
</head>
<body>
<h3>로그인</h3>
<form action="login.jsp" method="post">
<table>
  <tr><td>아이디</td><td><input type="text" name="id"></td></tr>
  <tr><td>비밀번호</td><td><input type="password" name="pass"></td></tr>
  <tr><td colspan=2><input type="submit" value="로그인"></td></tr>
</table>
</form>
<a href="register_form.jsp">회원가입</a>
</body>
</html>
