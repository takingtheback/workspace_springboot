<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- jstl 숫자포멧 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- jstl 문자포멧 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
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
	
<h3>전체회원조회</h3>
<c:if test="${not empty MemberList}">
	<table>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>휴대폰</th>
			<th>이메일</th>
			<th>가입일</th>
			<th>등급</th>
			<th>마일리지</th>
			<th>담당자</th>
		</tr>
		
		<c:forEach var="dto" items="${MemberList}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<!-- dto참조변수명.멤버변수명 => dto.getter() 수행결과 출력  -->
				<!-- <td><a href="detail?memberId=${dto.memberId}">${dto.memberId}</a></td> -->
				<td><a href="getMemberInfo?memberId=${dto.memberId}">${dto.memberId}</a></td> 
				<td>${fn:substring(dto.memberPw,0,2) }<c:forEach begin="2" end="${fn:length(dto.memberPw)}" step="1">*</c:forEach></td>
				<td>${dto.name}</td>
				<td>${dto.mobile}</td>
				<td>${dto.email}</td>
				<td>${dto.entryDate}</td>
				<td>${dto.grade}</td>
				<!-- type="number" 가능 -->
				<td><fmt:formatNumber value="${dto.mileage}" type="currency" currencySymbol="￦"/></td>
				<td>${dto.manager}</td>
			</tr>
		</c:forEach>
	</table>
</c:if>

<c:if test="${empty MemberList}">
	<h3>등록 회원이 없습니다.</h3>
</c:if>


</body>
</html>