<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-12.jsp</title>
</head>
<body>
<c:forEach var="i" begin="1" end="10" step="1">
    <c:set var="s" value="${s + i}" />
</c:forEach>
값 : ${s}
</body>
</html>
