<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식</title>
</head>
<body>
<%
    String str = "표현식 사용 예제입니다.";
    int a = 10, b = 20;
%>
<h2><%=str%></h2>
<h3><%=a%> 더하기 <%=b%>는 <%=a+b%>입니다.</h3>
<h3>1부터 5까지의 합은 <%=1+2+3+4+5%>입니다.</h3>
</body>
</html>
