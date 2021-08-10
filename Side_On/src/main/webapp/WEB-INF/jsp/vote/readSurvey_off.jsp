<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../inc/header.jsp" %><br><br><br><br>
<!-- Header-->
        <header class="bg-warning py-5">
            <div class="container px-1 px-lg-1 my-1">
                <div class="text-center text-white">
                <!-- 헤더...어떻게... -->
                <div style="padding-top: 1%;">
                    <h1 class="display-5 fw-bolder">투표하기</h1>
                    <p class="lead fw-normal text-white-80 mb-0">투표결과를 확인할 수 있습니다.</p>
            </div>
            </div>
         </div>
        </header>
<div style = "padding: 0px 100px 0px 100px;" class="container mt-5">
	<div class="row tm-content-row">
		<div class="col-xl-6 tm-block-col ">
			<div class="tm-bg-primary-dark tm-block tm-block-settings">
				<div class="form-group col-lg-4">
					<label for="Title">Title</label>
				</div>
				<div class="form-group col-lg-8">
					<label for="TitleEL">${ survey.title }</label>
				</div>
				<hr class="show-hr" width="100%">
				<div class="form-group col-lg-4">
					<label for="Writer">Writer</label>
				</div>
				<div class="form-group col-lg-8">
					<label for="WriterEL">${ survey.name }</label>
				</div>
				<hr class="show-hr" width="100%">
				<div class="form-group col-lg-4">
					<label for="Period">기간</label>
				</div>
				<div class="form-group col-lg-8">
					<label for="PeriodEL"> <fmt:formatDate
							value="${ survey.reg_date }" pattern="yy-MM-dd" /> ~ <fmt:formatDate
							value="${ survey.end_date }" pattern="yy-MM-dd" />
					</label>
				</div>
				<hr class="show-hr" width="100%">
				<div class="col-12">
					<div class="tm-bg-primary-dark tm-block tm-block"
						style="padding: 0; height: 300px">
						<h2 class="tm-block-title" style="padding: 0">
						투표 결과
						</h2>
						<c:if test=""></c:if>
						<canvas id="pieChart" class="chartjs-render-monitor" width="200"
							height="200"></canvas>
					</div>
					<h2 class="tm-block-title">목록</h2>
					<div class="form-group col-lg-12">
						<c:forEach items="${ survey.surveyItemList }" var="item" varStatus="status">
							<label class="tm-hide-sm"><span>${ status.count } - ${ item.content }</span></label><br>
						</c:forEach>
					</div>
				</div>
				<span class="form-group col-lg-3" style="padding: 10px">
					<c:if test="${ survey.member_seq eq pageContext.request.userPrincipal.principal.member_seq}">
						<button type="submit" id="surveyClose" class="btn btn-primary text-uppercase btn-show" style="float:left; margin-right: 4px;">삭제</button>
					</c:if>
					<button onclick="location.href='<%=request.getContextPath() %>voteHome'" type="button" id="surveyHome" class="btn btn-primary text-uppercase btn-show" style="float:right;">홈</button>
				</span>
			</div>
		</div>
		<div class="col-xl-6 tm-block-col ">
			<div class="tm-bg-primary-dark tm-block tm-block-settings">
				<div>
					<canvas id="lineChart"></canvas>
				</div>
				<div style="padding: 30px"></div>
				<div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow" style="padding:10px">
                           
                           <c:forEach items="${ reply }" var="dto" varStatus="status">
						
                            <div class="media tm-notification-item">
   	                            <c:if test="${empty dto.image}">
   	                            	<img src="/resources/img/default_profile.png" alt="Avatar Image" class="rounded-circle-small" style="margin-right: 10px;">
   	                            </c:if>
   	                            <c:if test="${not empty dto.image}">
   	                            	<img src="/resources/img/${dto.image}" alt="Avatar Image" class="rounded-circle-small" style="margin-right: 10px;">
   	                            </c:if>
       	                        <div class="media-body">
           	                        <p class="mb-2"><h4>${dto.username}</h4><b>${dto.reply_msg}</b> </p>
               	                    <span class="tm-small tm-text-color-secondary">${dto.writetime}  </span>
               	                    <c:if test="${pageContext.request.userPrincipal.name eq dto.username}">
                	                    <button type="button" class="reply_edit" 
   	            	                    	data-username="${dto.username}"
       	        	                    	data-replyseq="${dto.reply_seq}" 
       	        	                    	style="background-color: #4CAF50; border: none; color: white; padding:3px 8px">수정</button>
       	        	                    <button type="button" class="reply_del" 
   	            	                    	data-username="${dto.username}"
       	        	                    	data-replyseq="${dto.reply_seq}"
       	        	                    	style="background-color: #4CAF50; border: none; color: white; padding:3px 8px">삭제</button>    	                    
               	                    </c:if>
                   	            </div>
                       	    </div>
                       	    
						</c:forEach>
                       </div>
                   </div>
			</div>
		</div>
	</div>
</div>
<script src="/resources/js/Chart.min.js"></script>
<script src="/resources/js/tooplate-scripts.js"></script>
<script>
	$("#surveyHome").on("click", function() {
		event.preventDefault();
		location.href = "/survey/main${cri.makeSearch()}";
	});

	Chart.defaults.global.defaultFontColor = 'white';
	let ctxLine, ctxBar, ctxPie, optionsLine, optionsBar, optionsPie, configLine, configBar, configPie, lineChart;
	barChart, pieChart;
	
	var dataset = ${dataset};
	var itemList = ${itemList};
	$(function() {
		drawLineChart(dataset, itemList); 
		drawBarChart(dataset, itemList); 
		drawPieChart(dataset, itemList); 

		$(window).resize(function() {
			updateLineChart();
			updateBarChart();
			updatePieChart();
		});
	})
	var count = getTotalCountList(dataset, itemList);
	if (count.length != 0) {
		$.each($("label.tm-hide-sm"), function(index) {
			$(this).append(" [ <i class='fa fa-fw fa-tags'></i>&nbsp;" + count[index]===undefined?'0':'' + "표 ] ")
		});
	} else {
		$.each($("label.tm-hide-sm"), function(index) {
			$(this).append(" [ <i class='fa fa-fw fa-tags'></i>&nbsp; 투표결과X ] ")
		});
	}

</script>
