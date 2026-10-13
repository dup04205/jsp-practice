<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>6-1.jsp</title>
</head>
<body>
<%
    Enumeration<String> e = application.getInitParameterNames();
    while (e.hasMoreElements()) {
        String n = e.nextElement();
        out.print(n + " = " + application.getInitParameter(n) + "<br>");
    }
%>
</body>
</html>
