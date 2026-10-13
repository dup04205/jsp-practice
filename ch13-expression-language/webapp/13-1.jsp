<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연산자</title>
</head>
<body>
<table border=1>
<tr><th>EL</th><th>값</th></tr>
<tr><td>\${3 + 4}</td><td>${3 + 4}</td></tr>
<tr><td>\${4 - 3}</td><td>${4 - 3}</td></tr>
<tr><td>\${5 div 3}</td><td>${5 div 3}</td></tr>
<tr><td>\${13 mod 4}</td><td>${13 mod 4}</td></tr>
<tr><td>\${3 &lt; 7}</td><td>${3 < 7}</td></tr>
<tr><td>\${5 gt 2}</td><td>${5 gt 2}</td></tr>
<tr><td>\${(6 &gt; 3) ? 7 : 8}</td><td>${(6 > 3)?7:8}</td></tr>
<tr><td>\${header["user-agent"]}</td><td>${header["user-agent"]}</td></tr>
<tr><td>\${header["host"]}</td><td>${header["host"]}</td></tr>
</table>
</body>
</html>
