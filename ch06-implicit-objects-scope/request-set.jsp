<%@ page contentType="text/html; charset=UTF-8" %>
<%
    request.setAttribute("user", "홍길동");
%>
<jsp:forward page="request-get.jsp"/>
