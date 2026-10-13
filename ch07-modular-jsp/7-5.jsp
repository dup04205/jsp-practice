<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%-- 실행: 7-4.jsp?name=James  → <jsp:param>의 Jimmy가 앞, 원래 요청의 James가 뒤 --%>
<html>
<body>
 <h3>------- 7-5.jsp -------</h3>
 <% String[] values = request.getParameterValues("name"); %>
  이름1 : <%= values[0] %><br>
  이름2 : <%= values.length > 1 ? values[1] : "(없음)" %><br>
  전화 : <%= request.getParameter("phone") %>
 <h3>------- 7-5.jsp -------</h3>
</body>
</html>
