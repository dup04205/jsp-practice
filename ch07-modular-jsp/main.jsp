<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적 include 예제 (실제 활용)</title>
</head>
<body>
<h2>메인 콘텐츠</h2>
<p>이 부분은 main.jsp에서 출력되는 본문 영역입니다.</p>
<hr/>
<!-- 동적 인클루드 -->
<jsp:include page="userinfo.jsp" flush="true" />
</body>
</html>
