<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link type="text/css" rel="stylesheet" href="/css/common.css">
</head>
<body>
<a href="/main"><img src="/img/logo.png"></a>
<c:choose>
	<c:when test="${empty memberId || empty dto}">
		<a href="joinForm">회원가입</a>
		<a href="loginForm">로그인</a>
	</c:when>
	
	<c:otherwise>
		<div>로그인 정보 : ${memberId}[${dto.grade}]</div>
		<a href="logout">로그아웃</a>
		<a href="myInfo">내정보조회</a>
		
		<c:if test="${grade == 'A' || grade == 'a' }">
			<a href="findMember">회원정보검색</a>
			<a href="getMemberList">전체회원조회</a>
		</c:if>
	</c:otherwise>
</c:choose>

<h3>메인페이지</h3>
<c:if test="${not empty message}">
	${message}
</c:if>
</body>
</html>