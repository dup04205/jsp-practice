<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-18.jsp</title>
</head>
<body>
<c:catch var="ex">
<%
    int a = 2, b;
    b = a / 0;
%>
</c:catch>
<c:if test="${ex != null}">
    다음과 같은 예외가 발생하였습니다<br>
    ${ex}
</c:if>
</body>
</html>
