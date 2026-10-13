<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="meminfo" class="com.member.MemberInfo" scope="page" />
<html>
<body>
<%
    meminfo.setName("Jimmy");
    meminfo.setAge(10);
    out.print("MemberInfo name: " + meminfo.getName() + "<br>");
    out.print("MemberInfo age: " + meminfo.getAge());
%>
</body>
</html>
