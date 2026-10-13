<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-14.jsp</title>
</head>
<body>
<%
    HashMap<String, Object> map = new HashMap<String, Object>();
    map.put("name", "Jimmy");
    map.put("today", new Date());
    map.put("phone", "010-1111-2222");
%>
<c:set var="map" value="<%= map %>" />
<c:forEach var="m" items="${map}">
    ${m.key} = ${m.value}<br>
</c:forEach>
</body>
</html>
