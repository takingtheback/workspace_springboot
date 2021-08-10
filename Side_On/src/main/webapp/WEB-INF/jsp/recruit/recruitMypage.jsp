<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>SideOn</title>
		<link type="text/css" rel="stylesheet" href="../css/RecruitHome_juri.css">
		
		<!-- Google Font -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

</head>
<body>
<%@ include file="../inc/header.jsp" %>

 <div class="container">
                <div style="background-color: antiquewhite; padding-top: 20%;">
                    <h2>마이페이지</h2>
                </div>
 	 </div>              
    

<section>
	
		<div class="container">
	
		<div class="row">
			<div class="col-sm-4 col-md-3 sidebar">
			    <div class="mini-submenu">
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </div>
			    <div class="list-group">
			        <span class="list-group-item">
						마이페이지 메뉴
			        </span>
			        <a href="#" class="list-group-item active">
			          	프로젝트 모집 현황
			        </a>
			         <a href="#" class="list-group-item">
			          	프로젝트 지원 현황 
			        </a>
			         <a href="#" class="list-group-item">
			          	*** 
			        </a>
			         <a href="#" class="list-group-item">
			           회원 탈퇴 
			        </a>
				    </div>        
				</div>
				
				<div class="col-md-9 " style="border : 1px solid black;">
				
					<h3>프로젝트 모집 현황</h3>
					
					<table class="table table-hover" style="margin-top:10%; font-family: 'Noto Sans KR', sans-serif;">
						  <thead>
						    <tr>
						      <th scope="col" class="col-md-1">글 번호 </th>
						      <th scope="col" class="col-md-6">글 제목</th>
						      <th scope="col" class="col-md-2">참여자 수</th>
						      <th scope="col" class="col-md-3">편집</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th scope="row">1</th>
						      <td>Mark</td>
						      <td>Otto</td>
						      <td>@mdo</td>
						    </tr>
						    <tr>
						      <th scope="row">2</th>
						      <td>Jacob</td>
						      <td>Thornton</td>
						      <td>@fat</td>
						    </tr>
						    <tr>
						      <th scope="row">3</th>
						      <td colspan="2">Larry the Bird</td>
						      <td>
						      <button type="button" class="btn btn-info">수정</button>
						      <button  type="button"  class="btn btn-danger">삭제</button>
						      </td>
						    </tr>
						  </tbody>
						</table>
						
							<nav class="pagination-outer center" aria-label="Page navigation">
					        <ul class="pagination">
					            <li class="page-item">
					                <a href="#" class="page-link" aria-label="Previous">
					                    <span aria-hidden="true">«</span>
					                </a>
					            </li>
					            <li class="page-item"><a class="page-link" href="#">1</a></li>
					            <li class="page-item"><a class="page-link" href="#">2</a></li>
					            <li class="page-item active"><a class="page-link" href="#">3</a></li>
					            <li class="page-item"><a class="page-link" href="#">4</a></li>
					            <li class="page-item"><a class="page-link" href="#">5</a></li>
					            <li class="page-item">
					                <a href="#" class="page-link" aria-label="Next">
					                    <span aria-hidden="true">»</span>
					                </a>
					            </li>
					        </ul>
					    </nav>
				
				</div>
			
				
			</div>
	</div>
</section>
   
</body>
</html>