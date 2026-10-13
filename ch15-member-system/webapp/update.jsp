<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member" class="com.member.MemberDTO" scope="page" />
<jsp:setProperty name="member" property="*" />
<jsp:useBean id="data" class="com.member.MemberDAO" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
<c:choose>
  <c:when test="<%= data.updateOne(member) %>">
    <h3>회원 정보 수정에 성공하였습니다.</h3>
  </c:when>
  <c:otherwise>
    <h3>회원 정보 수정에 실패하였습니다.</h3>
  </c:otherwise>
</c:choose>
<h3><a href="member_info.jsp">회원 정보 보기 화면으로 돌아가기</a></h3>
</body>
</html>
