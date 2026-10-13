<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5-4.jsp</title>
</head>
<body>
<ul>
<%
  Enumeration e = request.getHeaderNames();
  while (e.hasMoreElements()) {
      String name = (String) e.nextElement();
      String value = request.getHeader(name);
      out.print("<li>" + name + " : " + value + "<br>");
  }
%>
</ul>
</body>
</html>
