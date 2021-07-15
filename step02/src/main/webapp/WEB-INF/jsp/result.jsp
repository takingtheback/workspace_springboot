<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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

<h3>메세지</h3>
<c:if test="${not empty message}">
	${message}
</c:if>

<c:if test="${not empty loginId}">
	${loginId}
</c:if>



</body>
</html>