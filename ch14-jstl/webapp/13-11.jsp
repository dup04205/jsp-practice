<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:choose (실행: 13-11.jsp?age=25)</title>
</head>
<body>
<c:choose>
    <c:when test="${param.name == 'Jimmy'}">당신의 이름은 Jimmy입니다.<br></c:when>
    <c:when test="${param.age == 25}">당신의 나이는 25세입니다.<br></c:when>
    <c:otherwise>당신은 누구입니까?</c:otherwise>
</c:choose>
</body>
</html>
