<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-15.jsp</title>
</head>
<body>
<c:import url="https://www.naver.com" />
<c:import url="/test.jsp">
    <c:param name="name" value="Jimmy" />
    <c:param name="address" value="Seoul" />
</c:import>
</body>
</html>
