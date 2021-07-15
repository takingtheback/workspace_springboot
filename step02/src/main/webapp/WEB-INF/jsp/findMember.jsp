<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<link type="text/css" rel="stylesheet" href="/css/common.css">
</head>
<body>
<a href="/main"><img src="/img/logo.png"></a>

<a href="joinForm">회원가입</a>
<a href="loginForm">로그인</a>

<h3>회원정보검색</h3>
<form action="getMemberInfo" method="post">
	<input type="text" name="memberId" autofocus="autofocus" required="required"/>
	<input type="submit" name="검색"/>
</form>
</body>
</html>