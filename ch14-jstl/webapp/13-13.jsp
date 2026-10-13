<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-13.jsp</title>
</head>
<body>
<c:set var="arr" value="<%= new int[] {10, 20, 30, 40, 50} %>" />
<table border=1>
<tr><th>배열원소</th><th>배열첨자</th><th>반복횟수</th></tr>
<c:forEach var="a" items="${arr}" begin="0" end="4" varStatus="status">
    <tr><td>${a}(${status.current})</td>
        <td>${status.index}</td>
        <td>${status.count}</td></tr>
</c:forEach>
</table>
</body>
</html>
