<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- jsp에서 내장객체인 session은 생성없이 바로 사용 -->
<%= session.getAttribute("name") %>님의 회원정보 수정이 정상 처리 되었습니다.<br />
<a href="logout.jsp">로그아웃</a> &nbsp;&nbsp; <a href="modify.jsp">정보수정</a>
</body>
</html>