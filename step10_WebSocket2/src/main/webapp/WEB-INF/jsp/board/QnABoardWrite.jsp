<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FaQ Board</title>
<link type="text/css" rel="stylesheet" href="/resource/css/contactEmail_JHK.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@3/dist/email.min.js"></script>
<script type="text/javascript" src="/resource/js/contactEmail_JHK.js"></script>
</head>
<body>
<%@ include file="../inc/header.jsp" %>

<div id="container" class="container">
    <div class="ChatForm">
        <span class="Chat_title">
            <img src="https://raw.githubusercontent.com/PD-team2/SpringProject_Output/main/JaeHyunKim/IMG/QuestionMail_bgWhite.png"></span>  
        <span class="Chat_title">문의글 작성</span>
        <div class="Chat_explain"> 문의글을 작성합니다.</div>   
        <hr> 
    </div>
</div>
<form action="/board/QnAWrite" method="post">
<div class="int-area">
작성자 : ${memberId},${grade}
<input type="hidden" class="mailForm" name="memberId" id="memberId" value="${memberId}"
       placeholder=" 본인의 이름을 입력해주세요." autocomplete="off" required>
<input type="hidden"name="grade" id="grade" value="${grade}">
</div>
<div class="int-area">
<input type="text" class="mailForm" name="qnaBoardTitle" id="qnaBoardTitle"
       placeholder="문의 제목" autocomplete="off" required>
</div>
<div class="text-area">
<p><textarea  class="textForm" name="qnaBoardContents" id="qnaBoardContents"
     placeholder="문의 내용을 입력해주세요.."></textarea></p>
</div>    


<div class="btn-area">
<button type="submit" class="button">작성하기</button>
</div>
</form>

</body>
</html>