<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.member.*" %>
<jsp:useBean id="data" class="com.member.MemberDAO" scope="page" />
<%
    String loginId = (String) session.getAttribute("id");
    if (loginId == null) {          // 로그인하지 않은 경우 초기 화면으로
        response.sendRedirect("index.jsp");
        return;
    }
    MemberDTO mb = data.selectOne(loginId);
    request.setAttribute("mb", mb);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
<a href="logout.jsp">로그아웃</a><br>
<a href="delete.jsp?id=${mb.id}">회원탈퇴</a><br>
<form action="update.jsp" method="post">
<table>
  <tr><th colspan=2>회원정보</th></tr>
  <tr><td>아이디</td><td><input type="text" name="id" value="${mb.id}" readonly></td></tr>
  <tr><td>비밀번호</td><td><input type="password" name="pass" value="${mb.pass}"></td></tr>
  <tr><td>이름</td><td><input type="text" name="name" value="${mb.name}"></td></tr>
  <tr><td>전화번호</td><td><input type="text" name="phone" value="${mb.phone}"></td></tr>
  <tr><td>이메일</td><td><input type="text" name="email" value="${mb.email}"></td></tr>
  <tr><td colspan=2><input type="submit" value="수정"></td></tr>
</table>
</form>
</body>
</html>
