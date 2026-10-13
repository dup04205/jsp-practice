<%@ page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="boardData" class="com.board.BoardData" scope="request" />
<jsp:setProperty name="boardData" property="*" />
<%--
  위 한 줄은 아래와 같음
  <jsp:setProperty name="boardData" property="title" param="title" />
  <jsp:setProperty name="boardData" property="writer" param="writer" />
  <jsp:setProperty name="boardData" property="text" param="text" />
  <jsp:setProperty name="boardData" property="pass" param="pass" />
--%>
<jsp:forward page="view.jsp" />
