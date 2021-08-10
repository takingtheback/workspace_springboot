<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
    
<!-- 다중조건검색 조각페이지 : inc/multipleCondition.jsp -->
<div class="multipleCondition">
	<form action="/board/QnACondition" method="get">
		<select name="condition">
			<option value="titleOrContents">제목+내용</option>
			<option value="qnaBoardTitle">문의제목</option>
			<option value="qnaBoardContents">문의내용</option>
			<option value="qnaBoardNo">번호</option>
			<option value="memberId">작성자</option>
			
		</select>
		<input class="inline" type="text" name="keyword" placeholder="검색어를 입력해주세요" autofocus="autofocus" required>
		<input type="submit" value="검색">
	</form>
</div>
