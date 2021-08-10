<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
</head>
<body>
<jsp:include page="../inc/logoMenu.jsp" />
<jsp:include page="../inc/beforeMenu.jsp" />

<h3>로그인</h3>
<form action="/member/login" method="post">
	<input type="text" name="memberId" autofocus="autofocus" placeholder="아이디" />
	<input type="password" name="memberPw" required="required" placeholder="비밀번호" />
	<input type="submit" value="로그인"/>
</form>

<c:if test="${not empty message}">
	${message}
</c:if>

<jsp:include page="../inc/footerMenu.jsp" />
</body>
</html>