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
<title>로그인 처리</title>
</head>
<body>
<c:choose>
  <c:when test="<%= data.isNotMember(member.getId(), member.getPass()) %>">
    <h3>가입되지 않은 아이디이거나 비밀번호가 틀렸습니다. 다시 작성해 주세요.</h3>
    <h3><a href="index.jsp">돌아가기</a></h3>
  </c:when>
  <c:otherwise>
    <% session.setAttribute("id", member.getId()); %>
    <h3>로그인 되었습니다.</h3>
    <h3><a href="member_info.jsp">회원 정보 보기</a></h3>
  </c:otherwise>
</c:choose>
</body>
</html>
