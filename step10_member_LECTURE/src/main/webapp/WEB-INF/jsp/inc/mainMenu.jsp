<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
    
<!-- 조각페이지 : mainMenu.jsp -->
<c:choose>
	<c:when test="${(empty memberId && empty grade) || empty dto}">
		<jsp:include page="beforeMenu.jsp" />
	</c:when>
	
	<c:when test="${(not empty memberId && not empty grade) || empty dto}">
		<c:if test="${grade == 'A' || dto.grade == 'A'}">
			<jsp:include page="afterMenuAdmin.jsp" />
		</c:if>
		
		<jsp:include page="afterMenu.jsp" />
	</c:when>
</c:choose>
