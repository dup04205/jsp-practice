<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.member.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:set / c:remove</title>
</head>
<body>
<c:set var="name1" value="Jimmy" scope="request" />
<c:set var="name2" scope="request">정재헌</c:set>
<%
    Member m = new Member();
    m.setName("James");
    m.setAge(30);
    m.setAddress("서울");
    request.setAttribute("m", m);
%>
<c:set var="name3" value="<%= m.getName() %>" />
name1 변수의 값 : ${name1}<br>
name2 변수의 값 : ${name2}<br>
name3 변수의 값 : ${name3}<br>

<c:set var="age" value="<%= m.getAge() %>" />
<c:set var="address" value="${m.address}" />
age 변수의 값 : ${age}<br>
address 변수의 값 : ${address}<br>

<%-- 자바빈 객체의 속성 변경(target 버전) --%>
<c:set target="<%= m %>" property="name" value="김재헌" />
자바빈 객체의 name 속성의 값 : <%= m.getName() %><br>
<c:set target="${m}" property="name" value="홍길동" />
자바빈 객체의 name 속성의 값 : ${m.name}<br>

<%-- 자바빈 객체를 변수에 저장 --%>
<c:set var="bestMember1" value="${m}" />
<c:set var="bestMember2" value="<%= m %>" />
bestMember1 변수의 값 : ${bestMember1.name}<br>
bestMember2 변수의 값 : ${bestMember2.name}<br>

<c:set var="member" value="${m}" />
${member.name}, ${member.age}, ${member.address}<br>

<%-- c:remove --%>
<c:remove var="name1" />
c:remove 후 name1 변수의 값 : "${name1}"<br>
</body>
</html>
