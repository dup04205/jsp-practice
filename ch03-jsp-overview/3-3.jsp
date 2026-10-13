<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언</title>
</head>
<body>
<%!
    int count = 0;
    public String greet(String name) {
        return "Hello, " + name + "!";
    }
%>
<h2>접속 횟수: <%= ++count %></h2>
<h2><%= greet("JSP 사용자") %></h2>
</body>
</html>
