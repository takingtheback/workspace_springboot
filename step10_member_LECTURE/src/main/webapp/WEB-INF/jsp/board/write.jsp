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
	<form action="doWrite" method="post">
		<table class = "board">
			<thead>
				<tr>
					<th colspan="2">글쓰기</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" class="form-control" placeholder="제목" name="boardTitle" maxlenght="50"/></td>
				</tr>
				<tr>
					<td><textarea type="text" class="form-control" placeholder="본문" name="boardContents" maxlenght="4000" height=350px;></textarea></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
		</form>
	</div>
</div>


</body>
</html>