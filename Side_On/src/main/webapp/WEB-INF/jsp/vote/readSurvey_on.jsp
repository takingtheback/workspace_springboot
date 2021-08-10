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
		<div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col tm-col-account-settings-show">
			<div class="tm-bg-primary-dark tm-block tm-block-settings">
				<form id="voteform" method="post" class="tm-signup-form row"> 
					<input type="hidden" id="survey_seq" name="survey_seq" value="${survey.survey_seq}">
					<div class="form-group col-lg-2 fa-2x">
						<label class="tm-block-title" for="Title">Title</label>
					</div>
					<div class="form-group col-lg-10">
						<label for="TitleEL">${ survey.title }</label>
					</div>
					<hr class="show-hr" width="100%">
					<div class="form-group col-lg-2">
						<label class="tm-block-title" for="Writer">Writer</label>
					</div>
					<div class="form-group col-lg-10">
						<label for="WriterEL">${ survey.name }</label>
					</div>
					<hr class="show-hr" width="100%">
					<div class="form-group col-lg-2">
						<label class="tm-block-title" for="Period">기간</label>
					</div>
					<div class="form-group col-lg-10">
						<label for="PeriodEL"> 
						<fmt:formatDate value="${ survey.reg_date }" pattern="yy-MM-dd" /> 
						~ <fmt:formatDate value="${ survey.end_date }" pattern="yy-MM-dd" />
						</label>
					</div>
					<hr class="show-hr" width="100%">
					<div class="col-12">
						<h2 class="tm-block-title">목록</h2>
						<div class="form-group col-lg-12">
							<!-- 설문지 보기 생성 or 그래프 출력 -->
							<c:forEach items="${ survey.surveyItemList }" var="item" varStatus="status">
								<label class="tm-hide-sm">
									<span style="vertical-align: super;">${ status.count } - ${ item.content }</span>
									&nbsp;&nbsp;
									<input name=itemSeq type="radio"
									class="form-control validate" value="${ item.survey_item_seq }"
									style="display: inline-block">
								</label><br>
							</c:forEach>
						</div>
					</div>
					<div class="form-group col-lg-12">
						<c:choose>
							<c:when test="${ survey.member_seq eq pageContext.request.userPrincipal.principal.member_seq }">
								<button type="submit" id="surveyClose" class="btn btn-primary text-uppercase btn-show" style="float:left; margin-right: 4px;">마감</button>
							</c:when>
							<c:otherwise>
							<s:authorize ifAllGranted="ROLE_ADMIN">
								<button type="button" id="surveyClose" class="btn btn-primary text-uppercase btn-show" style="float:left; margin-right: 4px;">마감</button>
							</s:authorize>
							</c:otherwise>
						</c:choose>	
						<c:if test="${ survey.member_seq eq pageContext.request.userPrincipal.principal.member_seq}">
							<button type="button" id="surveyRemove" class="btn btn-primary text-uppercase btn-show">삭제</button>
						</c:if>
						<button type="button" id="surveyVote" class="btn btn-primary text-uppercase btn-show" style="float:right;">투표</button>
						<button type="button" id="surveyHome" class="btn btn-primary text-uppercase btn-show" style="float:right; margin-right: 4px">홈</button>
					</div> 
				</form>
				
			</div>
			
		</div>
		<div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
			<div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow" style="padding: 10px">
					<div id="mydiv" class="tm-notification-items">
						<div class="media tm-notification-item">
							<div style="width: 100%">
								<br>
							</div>
						</div>
						<c:forEach items="${ reply }" var="dto" varStatus="status">
							<div class="media tm-notification-item">
								<c:if test="${empty dto.image}">
									<img src="/resources/img/default_profile.png"
										alt="Avatar Image" class="rounded-circle-small"
										style="margin-right: 10px;">
								</c:if>
								<c:if test="${not empty dto.image}">
									<img src="/resources/img/${dto.image}" alt="Avatar Image"
										class="rounded-circle-small" style="margin-right: 10px;">
								</c:if>
								<div class="media-body">
									<p class="mb-2">
									<h4>${dto.username}</h4>
									<b>${dto.reply_msg}</b>
									</p>
									<span class="tm-small tm-text-color-secondary">${dto.writetime}
									</span>
									<c:if
										test="${pageContext.request.userPrincipal.name eq dto.username}">
										<button type="button" class="reply_edit"
											data-username="${dto.username}"
											data-replyseq="${dto.reply_seq}"
											style="background-color: #4CAF50; border: none; color: white; padding: 3px 8px">수정</button>
										<button type="button" class="reply_del"
											data-username="${dto.username}"
											data-replyseq="${dto.reply_seq}"
											style="background-color: #4CAF50; border: none; color: white; padding: 3px 8px">삭제</button>
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
<script>
	$("#surveyHome").on("click", function() {
		event.preventDefault();
		location.href = "/survey/main${cri.makeSearch()}";
	});

	$("#surveyVote").on("click", function(event) {
		event.preventDefault();

		var form = $("#voteform")[0];
		var formData = new FormData(form);

		$.ajax({
			url : '/survey/voteSurvey',
			processData : false,
			contentType : false,
			data : formData,
			type : "POST",
			cache : false,
			success : function(ret) {
				if (!ret.result) {
					noticePopupInit({
						message : ret.message,
					});
				} else {
					noticePopupInit({
						message : ret.message,
						complete : setTimeout(function() {
							location.href = "/survey/main";
						}, 3000)
					});

				}
			},
			error : function() {
				noticePopupInit({
					message : "서버 에러. 잠시후에 시도하세요"
				});
			}
		});
	});

	$("#surveyClose").on("click", function() {
		event.preventDefault();
		var result = confirm("설문을 마감하시겠습니까?");

		if (result) {
			var form = $("#voteform")[0];
			$(form).attr("action", "/survey/closeSurvey");
			$(form).submit();
		}
	});

	$("#surveyRemove").on("click", function() {
		event.preventDefault();

		var result = confirm("설문을 삭제하시겠습니까?");

		if (result) {
			var form = $("#voteform")[0];
			$(form).attr("action", "/survey/removeSurvey");
			$(form).submit();
		}
	});
</script>
