<%@ page contentType="text/html; charset=UTF-8" buffer="16kb" autoFlush="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6-5.jsp</title>
</head>
<body>
<ul>
    <li>버퍼 크기 : <%= out.getBufferSize() %> <br>
    <li>남은 버퍼 크기 : <%= out.getRemaining() %> <br>
    <li>autoFlush 속성값 : <%= out.isAutoFlush() %>
</ul>
</body>
</html>
