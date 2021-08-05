<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h3>list.jsp</h3>
<hr/>
<!-- bootstrap를 이용하여 작성 -->
<div class="container">
	<h3 class="text-center text-success">게시판</h3>
	<div class="table-responsive"> <!-- rwd수용 -->
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>제목</th>
					<th>날짜</th>
					<th>히트</th>
				</tr>
			</thead>
			<tbody>
				<!-- c:foreach jstl로 반복  list는 서버에서 보내온 list객체 이고 dto는 list안의 원소 객체 명-->
				<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.bId}</td>
					<td>${dto.bName}</td>
					<td>
						<c:forEach begin="1" end="${dto.bIndent}">-</c:forEach> <!-- 댓글 달기시 댓글 순서를 - 로 표시 -->
						<a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a> <!-- 제목 클릭시 게시판 번호를 보내어 해당 내용 가져옴 -->
					</td>
					<td>${dto.bDate}</td>
					<td>${dto.bHit}</td>
				</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5"> <a href="write_view.do" class="bg-primary text-white p-2">글작성</a> </td>
				</tr>
			</tfoot>
		</table>
	</div>	
</div>
</body>
</html>