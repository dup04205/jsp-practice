<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.school.Score" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-8.jsp</title>
</head>
<body>
<h3>액션태그로 생성된 자바빈 객체</h3>
<jsp:useBean id="score1" class="com.school.Score" scope="page" />
<jsp:setProperty name="score1" property="name" value="Jimmy" />
<jsp:setProperty name="score1" property="kor" value="90" />
<jsp:setProperty name="score1" property="eng" value="85" />
<jsp:setProperty name="score1" property="math" value="95" />
이름 : ${score1.name}<br>
국어 : ${score1.kor}<br>
영어 : ${score1.eng}<br>
수학 : ${score1.math}

<h3>스크립트로 생성된 자바빈 객체</h3>
<%
    Score score2 = new Score();
    score2.setName("Jimmy");
    score2.setKor(90);
    score2.setEng(85);
    score2.setMath(95);
    request.setAttribute("score2", score2);
%>
이름 : ${score2.name}<br>
국어 : ${score2.kor}<br>
영어 : ${score2.eng}<br>
수학 : ${score2.math}
</body>
</html>
