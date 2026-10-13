<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 버전</title>
</head>
<body>
<%
    int i = 0;
    for (i = 1; i <= 100; i++) {
        if (i % 2 == 0) {
%>
<%= i %>는 짝수입니다.<br>
<%
        } else {
%>
<%= i %>는 홀수입니다.<br>
<%
        }
    }
%>
</body>
</html>
