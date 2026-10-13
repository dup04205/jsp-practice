<%@ page contentType="text/html; charset=UTF-8" %>
<%-- 10-2.jsp를 액션 태그로 작성 + scope="request" --%>
<jsp:useBean id="meminfo" class="com.member.MemberInfo" scope="request" />
<jsp:setProperty name="meminfo" property="name" value="Jimmy" />
<jsp:setProperty name="meminfo" property="age" value="10" />
<jsp:forward page="10-5.jsp" />
