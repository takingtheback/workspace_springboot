<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
    
<!-- 다중조건검색 조각페이지 : inc/multipleCondition.jsp -->
<div class="multipleCondition">
	<form action="/admin/multipleCondition" method="get">
		<select name="condition">
			<option value="memberId">아이디</option>
			<option value="name">이름</option>
			<option value="mobile">휴대폰[뒷번호4자리]</option>
			<option value="email">이메일</option>
			<option value="grade">등급</option>
			<option value="mileage">마일리지[이상]</option>
			<option value="manager">담당자</option>
			<option value="memberIdOrEmail">아이디+이메일</option>
		</select>
		<input class="inline" type="text" name="keyword" placeholder="검색어를 입력해주세요" autofocus="autofocus">
		<input type="submit" value="검색">
	</form>
</div>