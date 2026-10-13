<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 로그인 처리</title>
</head>
<body>
<%
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
  // 회원 여부 판단 (교재 예: admin / pass)
  if ("admin".equals(id) && "pass".equals(pw)) {
    Cookie cookie = new Cookie("ID", "ADMIN");
    response.addCookie(cookie);
    out.print("<h2>로그인 성공</h2>");
  } else {
    out.print("<h2>로그인 실패</h2>");
  }
%>
<h3><a href="8-10.jsp">로그인 확인</a></h3>
</body>
</html>
