<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 다중조건 검색식 -->   
<div class="multipleCondition">
	<form action="multipleCondition" method="get">
		<select name="condition">
			<option value="memberId">아이디</option>
			<option value="grade">등급</option>
			<option value="memberIdOrEmail">아이디+이메일</option>
			<option value="mileage">마일리지[이상]</option>
			<option value="manager">담당자</option>
			<option value="mobile">휴대폰[뒷4자리]</option>
			<option value="email">이메일</option>
			<option value="name">이름</option>
		</select>
		<span><input class="inline" type="text" name="keyword" placeholder="검색어를 입력해주세요." >
		<input type="submit" value="검색"></span>
	</form>
</div>