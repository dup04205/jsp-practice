<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="data" class="com.member.MemberDAO" scope="page" />
<% String id = request.getParameter("id"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>
<c:choose>
  <c:when test="<%= data.deleteOne(id) %>">
    <c:redirect url="logout.jsp" />
  </c:when>
  <c:otherwise>
    <h3>회원 정보 삭제에 실패하였습니다.</h3>
    <h3><a href="member_info.jsp">회원 정보 보기 화면으로 돌아가기</a></h3>
  </c:otherwise>
</c:choose>
</body>
</html>
