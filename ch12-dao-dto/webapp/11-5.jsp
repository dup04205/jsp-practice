<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, com.member.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member 테이블 관리하기(DAO/DTO)</title>
</head>
<body>
<div align="center">
<h3>Member 테이블 내용</h3>
<table border=1>
<tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>전화번호</th><th>주소</th><th>수정</th><th>삭제</th></tr>
<%
    ArrayList<MemberDTO> mbList = new MemberDAO().selectAll();
    for (MemberDTO mb : mbList) {
        out.print("<tr><td>" + mb.getId() + "</td>");
        out.print("<td>" + mb.getPass() + "</td>");
        out.print("<td>" + mb.getName() + "</td>");
        out.print("<td>" + mb.getPhone() + "</td>");
        out.print("<td>" + mb.getAddress() + "</td>");
        String update = String.format("<a href='11-6.jsp?id=%s'>수정</a>", mb.getId());
        String delete = String.format("<a href='11-8.jsp?id=%s'>삭제</a>", mb.getId());
        out.print("<td>" + update + "</td>");
        out.print("<td>" + delete + "</td></tr>");
    }
%>
</table>
<h3><a href="11-3.html">레코드 입력하기</a></h3>
</div>
</body>
</html>
