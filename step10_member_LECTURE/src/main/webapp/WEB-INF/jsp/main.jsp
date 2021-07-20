<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리시스템</title>
<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
</head>
<body>

<jsp:include page="inc/logoMenu.jsp" />
<jsp:include page="inc/mainMenu.jsp" />

<h3>회원관리시스템</h3>
<c:if test="${not empty message}">${message}</c:if>

<jsp:include page="inc/footerMenu.jsp" />
</body>
</html>



