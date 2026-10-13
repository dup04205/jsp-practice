<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 함수</title>
</head>
<body>
<c:set var="foo" value="set 태그입니다." />
length(foo) = ${fn:length(foo)}<br>
toUpperCase(foo) = ${fn:toUpperCase(foo)}<br>
substring(foo, 2, 9) = ${fn:substring(foo, 2, 9)}<br>
</body>
</html>
