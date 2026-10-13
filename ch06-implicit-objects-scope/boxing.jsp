<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본형 값 저장과 읽기</title>
</head>
<body>
<%
    request.setAttribute("age", 25);                  // 박싱: int → Integer
    int age = (Integer) request.getAttribute("age");  // 형 변환 후 언박싱
%>
age = <%= age %>
</body>
</html>
