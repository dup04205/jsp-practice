<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 버전</title>
</head>
<body>
<c:forEach var="i" begin="1" end="100">
    <c:if test="${i % 2 == 0}">${i}는 짝수입니다.<br></c:if>
    <c:if test="${i % 2 != 0}">${i}는 홀수입니다.<br></c:if>
</c:forEach>
</body>
</html>
