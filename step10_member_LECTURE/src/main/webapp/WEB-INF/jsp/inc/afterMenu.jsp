<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
    
<!-- 조각페이지 : afterMenu.jsp -->
<div class="afterMenu">
	<span class="seperator">|</span><a href="/member/logout">로그아웃</a>
	<span class="seperator">|</span><a href="javascript:alert('myInfo 서비스구현하세요')">내정보조회</a>
	<span class="seperator">|</span><a href="/board/freeBoard">게시글조회</a>
	<span class="seperator">|</span>
</div>

<div>
<c:choose>
	<c:when test="${grade == 'G'}">${memberId} [일반회원(${grade})]</c:when>
	<c:when test="${grade == 'S'}">${memberId} [우수회원(${grade})]</c:when>
	<c:when test="${grade == 'A'}">${memberId} [관리자(${grade})]</c:when>
</c:choose>
</div>
		
		
