<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="score" class="com.school.Score" scope="page" />
<jsp:setProperty name="score" property="name" value="Jimmy" />
<jsp:setProperty name="score" property="kor" value="90" />
<jsp:setProperty name="score" property="eng" value="85" />
<jsp:setProperty name="score" property="math" value="95" />
<html>
<body>
이름 : <jsp:getProperty name="score" property="name"/><br>
국어 : <jsp:getProperty name="score" property="kor"/><br>
영어 : <jsp:getProperty name="score" property="eng"/><br>
수학 : <jsp:getProperty name="score" property="math"/>
</body>
</html>
