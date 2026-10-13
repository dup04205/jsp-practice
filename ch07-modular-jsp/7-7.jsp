<%-- 7-6.jsp에 정적 include되는 조각(단독 실행 불가: data 변수는 7-6.jsp에 선언됨) --%>
<%
    data += 20;
%>
7-7.jsp : <%= data %><br>
