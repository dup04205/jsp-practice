<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13-5.jsp</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<form method="post">
  이름 : <input type="text" name="name" size=20 value="${param['name']}"><br>
  나이 : <input type="text" name="age" size=20 value="${param['age']}"><br>
  주소 : <input type="text" name="address" size=20 value="${param['address']}"><br>
  <input type="submit" value="확인">
</form>
이름 : ${param.name}<br>
나이 : ${param.age}<br>
주소 : ${param.address}
</body>
</html>
