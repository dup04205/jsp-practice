<%@ page contentType="text/html; charset=UTF-8" %>
<%
    // 실제로는 세션이나 DB에서 사용자 정보를 가져옴
    String userName = "홍길동";
    java.util.Date now = new java.util.Date();
%>
<div style="background-color:#e6f2ff; padding:10px;">
  <p>👤 현재 로그인 사용자: <b><%= userName %></b></p>
  <p>⏰ 현재 시간: <%= now %></p>
</div>
