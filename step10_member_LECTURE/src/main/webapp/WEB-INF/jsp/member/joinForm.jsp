<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
</head>
<body>
<jsp:include page="../inc/logoMenu.jsp" />
<jsp:include page="../inc/beforeMenu.jsp" />

<h3>회원가입</h3>
<form action="/member/join" method="post">
	<input type="text" name="memberId" autofocus="autofocus" placeholder="아이디 6~30자리"/>
	<input type="password" name="memberPw" required="required" placeholder="비밀번호 6~20자리"/>
	<input type="text" name="name" required="required" placeholder="이름" />
	<input type="text" name="mobile" required="required" placeholder="휴대폰 010-1234-1234" />
	<input type="text" name="email" required="required" placeholder="이메일"/>
	<input type="submit" value="가입" />
	<input type="reset" value="취소" />
</form>

<jsp:include page="../inc/footerMenu.jsp" />
</body>
</html>