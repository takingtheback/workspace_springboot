<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA Board|Side-On</title>
<link type="text/css" rel="stylesheet" href="/resource/css/QnABoard_JHK.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
<%@ include file="../inc/header.jsp" %>
<!-- Header-->
<header class="bg-warning py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
        <!-- 헤더...어떻게... -->
        <div style="padding-top: 8%;">
            <h1 class="display-5 fw-bolder">문의게시판</h1>
            <p class="lead fw-normal text-white-80 mb-0">직접 문의글을 남겨보세요.</p>
    </div>
    </div>
 </div>
</header>
<div class="QnAForm">
<table class="QnATable">
	<tr>
		<th>번호</th>
		<th>문의제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
	<c:if test="${not empty message}">
		<tr>
			<th colspan=10>${message}</th>
		</tr>
	</c:if>
	<c:forEach var="dto" items="${list}" varStatus="status">
		<tr>
			<!-- status.index => 0시작, status.count => 1시작 -->
			<th>${dto.qnaBoardNo}</th>
			<th onmouseover="this.style.color='#ffc800';" onmouseout="this.style.color='black';">
			<a href="QnABoardDetail?qnaBoardNo=${dto.qnaBoardNo}">${dto.qnaBoardTitle}</a></th>
			<th onmouseover="this.style.color='#ffc800';" onmouseout="this.style.color='black';">${dto.memberId}</th>
			<th>${dto.qnaBoardDate}</th>
			<th>${dto.qnaBoardViews}</th>
		</tr>
	</c:forEach>
</table>  	          

<div class="mappingArea">
	 <ul class="pagination">
	     <li class="page-item">
	     <c:if test="${pageMaker.prev}">
	         <a href="${pageMaker.startPage-1}" class="page-link" aria-label="Previous">
	             <span aria-hidden="true">«</span>
	             </a>
	              </c:if>
	         
	     </li>
	     <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<li class="page-link ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
				</c:forEach>
	    
	     <li class="page-item">
	         <a href="${pageMaker.endPage + 1 }" class="page-link" aria-label="Next">
	             <span aria-hidden="true">»</span>
	         </a>
	     </li>
	 </ul>  		
				
	<form id="moveForm" method="get">	
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">	
		<input type="hidden" name="type" value="${pageMaker.cri.type }">	
	</form>
</div>  
</div> 
  


<div class="btn-area">
<button type="button" class="WriteButton" onmouseover="this.style.color='#ffc800';" onmouseout="this.style.color='black';"
onclick="location.href='QnABoardWrite'">글쓰기</button>
</div>

  
<script>
let moveForm = $("#moveForm");

$(".pageInfo a").on("click", function(e){
	e.preventDefault();
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	moveForm.attr("action", "/board/QnABoard");
	moveForm.submit();
	
});	

$(".pagination a").on("click", function(e){
	e.preventDefault();
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	moveForm.attr("action", "/board/QnABoard");
	moveForm.submit();
	
});	
</script> 
</body>

</html>