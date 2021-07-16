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
<c:choose>
	<c:when test="${not empty dto}">
	<form action="memberUpdate" method="post"></form>
	<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="memberId" value="${dto.memberId}" readonly="readonly"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="memberPw" value="${dto.memberPw}"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" value="${dto.name}"></td>
	</tr>
	<tr>
		<td>휴대폰</td>
		<td><input type="text" name="mobile" value="${dto.mobile}"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" value="${dto.email}"></td>
	</tr>
	<tr>
		<td>가입일</td>
		<td><input type="text" name="entryDate" value="${dto.entryDate}" readonly="readonly"></td>
	</tr>
	<tr>
		<td>등급</td>
		<td><input type="text" name="grade" value="${dto.grade}" readonly="readonly"></td>
		
			<c:choose>
				<c:when test="${dto.grade == 'G'}">[일반회원]</c:when>
				<c:when test="${dto.grade == 'S'}">[우수회원]</c:when>
				<c:when test="${dto.grade == 'A'}">[관리자]</c:when>
			</c:choose>
		
	</tr>
	<tr>
		<td>마일리지</td>
		<td><input type="number" name="mileage" value="${dto.mileage}" readonly="readonly"></td>
	</tr>
	<tr>
		<td>담당자</td>
		<td><input type="text" name="manager" value="${dto.manager}" readonly="readonly"></td>
	</tr>
	
	</table>
	<div>
		<input type="submit" value="확인" >
		<input type="reset" value="취소" >
	</div>	
	</c:when>
</c:choose>
</body>
</html>