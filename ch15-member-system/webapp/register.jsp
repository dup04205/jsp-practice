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
<title>회원가입 처리</title>
</head>
<body>
<c:choose>
  <c:when test="<%= data.isNotMember(member.getId(), member.getPass()) %>">
    <c:choose>
      <c:when test="<%= data.insertOne(member) %>">
        <h3>회원 가입에 성공하였습니다.</h3>
        <h3><a href="index.jsp">로그인 화면으로 돌아가기</a></h3>
      </c:when>
      <c:otherwise>
        <h3>회원 가입에 실패하였습니다. 다시 시도해주세요.</h3>
        <h3><a href="register_form.jsp">회원 가입 화면으로 돌아가기</a></h3>
      </c:otherwise>
    </c:choose>
  </c:when>
  <c:otherwise>
    <h3>이미 가입된 아이디입니다. 다시 작성해 주세요.</h3>
    <h3><a href="register_form.jsp">회원 가입 화면으로 돌아가기</a></h3>
  </c:otherwise>
</c:choose>
</body>
</html>
