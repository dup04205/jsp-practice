<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MariaDB 연결 테스트</title>
</head>
<body>
<%
  String url = "jdbc:mariadb://localhost:3306/my_db";
  String user = "user";
  String pw = "user1234";
  Class.forName("org.mariadb.jdbc.Driver");

  try (Connection con = DriverManager.getConnection(url, user, pw)) {
    out.println("MariaDB 연결 성공");
  } catch (Exception e) {
    out.println("MariaDB 연결 실패");
    e.printStackTrace();
  }
%>
</body>
</html>
