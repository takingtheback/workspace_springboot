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
<a href="findMember">회원정보검색</a>
<a href="/getMemberList">전체회원검색</a>

<h3>로그인페이지</h3>
<form action="login" method="post">
	<input type="text" name="memberId" autofocus="autofocus" required="required"/>
	<input type="password" name="memberPw" required="required"/>
	<input type="submit" value="로그인"/>
</form>

<h3>로그인페이지[name="id", name="pw"]</h3>
<form action="login/param" method="post">
	<input type="text" name="id" autofocus="autofocus" />
	<input type="password" name="pw" required="required"/>
	<input type="submit" value="로그인"/>
</form>

<h3>로그인페이지[name="aaa", name="bbb"]</h3>
<form action="login/null" method="post">
	<input type="text" name="aaa" autofocus="autofocus" />
	<input type="password" name="bbb" required="required"/>
	<input type="submit" value="로그인"/>
</form>
</body>
</html>