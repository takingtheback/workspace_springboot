<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FreeBoard</title>
<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
</head>
<body>
<jsp:include page="../inc/logoMenu.jsp" />
<jsp:include page="../inc/mainMenu.jsp" />

</head>
<body>
<h3>자유게시판</h3>
<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회</th>
		<th>추천</th>
	</tr>
	<!-- 검색조건에 해당하는 결과가 없는 경우 메세지 출력 -->
	<c:if test="${not empty message}">
		<tr>
			<th colspan=10>${message}</th>
		</tr>
	</c:if>
	
	<c:forEach var="dto" items="${list}" varStatus="status">
		<tr>
			<!-- status.index => 0시작, status.count => 1시작 -->
			<th>${status.count}</th>
			<th><a href="freeBoardDetail?dto=${dto}">${dto.title}</a></th>
			<th>${dto.memberId}</th>
			<th>${dto.BDate}</th>
			<th>${dto.views}</th>
			<th>${dto.thumbs}</th>
		</tr>
	</c:forEach>
	<a href="/board/write">글쓰기</a>
	
	
</table>

 
<jsp:include page="../inc/footerMenu.jsp" />
</body>
</html>