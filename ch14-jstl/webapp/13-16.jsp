<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-16.jsp</title>
</head>
<body>
<c:url value="https://www.google.com/search" var="google">
    <c:param name="q" value="거북선" />
</c:url>
<c:redirect url="${google}" />
</body>
</html>
