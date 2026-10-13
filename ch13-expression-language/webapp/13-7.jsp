<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.school.Score" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-7.jsp</title>
</head>
<body>
<%
    Score score = new Score();
    score.setName("Jimmy");
    score.setKor(90);
    score.setEng(85);
    score.setMath(95);
%>
이름 : <%= score.getName() %><br>
국어 : <%= score.getKor() %><br>
영어 : <%= score.getEng() %><br>
수학 : <%= score.getMath() %><br>
<%-- 스크립트릿에서 만든 객체는 영역에 저장하지 않으면 EL로 읽을 수 없음: \${score.name} = "${score.name}" --%>
</body>
</html>
