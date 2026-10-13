<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:if (실행: 13-10.jsp?name=Jimmy&age=25)</title>
</head>
<body>
<c:if test="true">무조건 실행됩니다.<br></c:if>
<c:if test="${param.name == 'Jimmy'}">파라미터 name의 값이 ${param.name}입니다.<br></c:if>
<c:if test="${param.age >= 20}">파라미터 age의 값이 20 이상입니다.<br></c:if>
</body>
</html>
