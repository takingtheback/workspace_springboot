<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FaQ Board</title>
<link type="text/css" rel="stylesheet" href="/resource/css/FaQBoard_JHK.css">
</head>
<body>
<%@ include file="../inc/header.jsp" %>

<div class="FAQForm">
<span class="FAQ_title">FAQ</span>
<span class="FAQ_title">자주 묻는 질문</span>    
<div class="FAQ_explain">자주 물어보시는 질문들에 대한 답변입니다.</div>    
    
<div class="accordian">
<input type="radio" name="accordian" id="answer01"/>
<label for="answer01">Q. 프로젝트 모집 관련 질문<em></em></label>
<div><p>
A. 프로젝트 모집관련 질문에 대한 답변입니다.<br>
질문에 대한 답변입니다.<br>
    질문에 대한 답변입니다.
</p></div>
<input type="radio" name="accordian" id="answer02"/>
<label for="answer02">Q. 팀원 모집 관련 질문<em></em></label>
<div><p>
A. 프로젝트 모집관련 질문에 대한 답변입니다.<br>
질문에 대한 답변입니다.<br>
    질문에 대한 답변입니다.
</p></div>
<input type="radio" name="accordian" id="answer03"/>
<label for="answer03">Q. 투표 관련 질문<em></em></label>
<div><p>
A. 프로젝트 모집관련 질문에 대한 답변입니다.<br>
질문에 대한 답변입니다.<br>
    질문에 대한 답변입니다.
</p></div>
<input type="radio" name="accordian" id="answer04"/>
<label for="answer04">Q. 신고 관련 질문<em></em></label>
<div><p>
A. 프로젝트 모집관련 질문에 대한 답변입니다.<br>
질문에 대한 답변입니다.<br>
    질문에 대한 답변입니다.
</p></div>
</div>
</div>
    
<div class="footer">
<div class="footerMenuForm">
<div class="footerMenu">
<div class="footerTitle">채팅문의</div>
<div class="footerExplain">관리자와 대화로 문의하실 수 있습니다</div>
<div class="footerExplain2">09:00 AM - 12:00 PM  / 01:00 PM - 06:00 PM</div>
<input type="button" class="footerButton" value="관리자와 채팅하기" 
       onclick="location.href='chat'">
</div>
<div class="footerMenu">
<div class="footerTitle">문의 남기기</div>
<div class="footerExplain">문의사항을 남겨주시면 메일로 답변해드립니다.</div>
<div class="footerExplain2">답장 받으실 메일을 남겨주세요.</div>
<input type="button" class="footerButton" value="문의하기"
        onclick="location.href='contactEmail'">
</div>
<div class="footerMenu">
<div class="footerTitle">댓글 남기기</div>
<div class="footerExplain">댓글로 남겨주시면 답변해드립니다.</div>
<div class="footerExplain2">댓글창 이동</div>
<input type="button" class="footerButton" value="댓글 남기기"
        onclick="location.href='replyBoard'">
</div>
</div>    
</div>   
</body>
</html>