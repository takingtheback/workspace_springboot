<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FaQ Board</title>
<link type="text/css" rel="stylesheet" href="/resource/css/Mypage_JHK.css">
</head>
<body>
<%@ include file="../inc/header.jsp" %>

<div class="MyPage-Form">
<div class="MyProfile">
    <div class="Img"><a href="#">
    <img src="https://raw.githubusercontent.com/PD-team2/SpringProject_Output/main/JaeHyunKim/IMG/MyProfile.png"></a></div>
    <div class="title"> 내 프로필</div> 
    <div class="expalin"> 개인 프로필을 확인할 수 있습니다.</div> 
    <input type="button" class="button" value="프로필 보기">
</div>
<div class="MyProfile">
    <div class="Img"><a href="#">
    <img src="https://raw.githubusercontent.com/PD-team2/SpringProject_Output/main/JaeHyunKim/IMG/MyInfo.png"></a></div>
    <div class="title"> 내 정보 변경</div> 
    <div class="expalin"> 회원님의 정보를 변경할 수 있습니다.</div> 
    <input type="button" class="button" value="변경하기">
</div>

<div class="MyProfile">
    <div class="Img"><a href="/board/FaQBoard">
    <img src="https://raw.githubusercontent.com/PD-team2/SpringProject_Output/main/JaeHyunKim/IMG/Question.png"></a></div>
    <div class="title"> 문의하기</div> 
    <div class="expalin"> 관리자에게 문의하실 수 있습니다.</div> 
    <input type="button" class="button" value="문의하기" onclick="location.href='FaQBoard'"> 
</div>
<div class="MyProfile">
    <div class="Img"><a href="#">
    <img src="https://raw.githubusercontent.com/PD-team2/SpringProject_Output/main/JaeHyunKim/IMG/Myrecord.png"></a></div>
    <div class="title"> 내 활동 기록</div> 
    <div class="expalin"> 작성하신 게시물을 조회할 수 있습니다.</div> 
    <input type="button" class="button" value="활동기록보기">
     
</div>

</body>
</html>