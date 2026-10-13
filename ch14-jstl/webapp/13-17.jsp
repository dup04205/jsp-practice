<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-17.jsp</title>
</head>
<body>
<% String contents = "<h1>안녕하세요<br>태그라이브러리의 사용법입니다</h1>"; %>
<c:out value="<%= contents %>" escapeXml="true" /><br>
<c:out value="<%= contents %>" escapeXml="false" />
</body>
</html>
