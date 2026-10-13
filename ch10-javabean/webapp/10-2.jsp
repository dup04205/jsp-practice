<%@ page contentType="text/html; charset=UTF-8" %>
<%-- scope="page"이면 10-3.jsp에 값이 전달되지 않음. "request"로 바꿔서 비교해 볼 것 --%>
<jsp:useBean id="meminfo" class="com.member.MemberInfo" scope="page" />
<%
    meminfo.setName("Jimmy");
    meminfo.setAge(10);
%>
<jsp:forward page="10-3.jsp" />
