<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿</title>
</head>
<body>
30의 약수는 다음과 같다.<br>
<%
  for (int i = 1; i <= 30; i++) {
    if (30 % i == 0) out.print(i + " ");
  }
%>
</body>
</html>
