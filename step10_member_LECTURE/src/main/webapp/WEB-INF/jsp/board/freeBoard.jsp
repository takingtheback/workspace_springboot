<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FreeBoard</title>
<link type="text/css" rel="stylesheet" href="/resource/css/board.css">
</head>
<body>
<jsp:include page="../inc/logoMenu.jsp" />
<jsp:include page="../inc/mainMenu.jsp" />

</head>
<body>
<div class = "container">
	<div class = "row">
		<table class = "board">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
					<th>추천</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				<td>1</td>
				<td>테스트</td>
				<td>고길동</td>
				<td>2021-07-20</td>
				<td>100</td>
				<td>5</td>
				</tr>
			</tbody>
		</table>
		<a href="/board/write" class="btn btn-primary pull-right">글쓰기</a>
	</div>
</div>


</body>
</html>