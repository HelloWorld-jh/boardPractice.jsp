<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	session.invalidate();  //모든 세션 제거
	response.sendRedirect("login.html");
%>
</body>
</html>