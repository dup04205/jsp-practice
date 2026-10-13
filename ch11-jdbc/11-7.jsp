<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
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
  String id = request.getParameter("id");
  String pass = request.getParameter("pass");
  String name = request.getParameter("name");
  String phone = request.getParameter("phone");
  String address = request.getParameter("address");
  String url = "jdbc:mariadb://localhost:3306/my_db";
  String user = "user";
  String pw = "user1234";
  Class.forName("org.mariadb.jdbc.Driver");

  try (
    Connection con = DriverManager.getConnection(url, user, pw);
    Statement stmt = con.createStatement();
  ){
    String sql = String.format("update member set id = %s, pass = '%s', name = '%s', phone = '%s', address = '%s' where id = %s", id, pass, name, phone, address, id);
    int res = stmt.executeUpdate(sql);
    if (res == 1) out.print("레코드 update 성공");
    else out.print("레코드 update 실패");
  } catch (Exception e) {
    out.print("레코드 update 실패");
    e.printStackTrace();
  }
%>
<h3><a href="11-5.jsp">초기 화면</a></h3>
</div>
</body>
</html>
