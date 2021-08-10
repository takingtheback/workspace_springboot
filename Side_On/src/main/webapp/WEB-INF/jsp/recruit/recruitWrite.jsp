<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>글 작성 | Side-On</title>

<link type="text/css" rel="stylesheet" href="../css/RecruitHome_juri.css">

    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> 
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	  
	  <script>
		document.getElementById('start_date').valueAsDate = new Date();

		
		 $(document).ready (function () {     
			 
			   $('#btnAdd').click (function () {         
				   alert('hi');
			   });

				
	            $('#btnAdd').click (function () {         
	    			alert('hi');
	                $('.buttons').append (                        
	                    '<input type="text" name="txt"> <input type="button" class="btnRemove" value="Remove"><br>'                    
	                ); // end append                            
	                $('.btnRemove').on('click', function () { 
	                    $(this).prev().remove (); // remove the textbox
	                    $(this).next ().remove (); // remove the <br>
	                    $(this).remove (); // remove the button
	                });
	            }); // end click                                            
	        }); // end ready        
	    </script>    

	</head>
<body>
   <%@ include file="../inc/header.jsp" %>
    <!-- Services-->
    
         <div class="container">
                <div style="background-color: antiquewhite; padding-top: 10%;">
                    <h2>글 쓰기 </h2>
                    
                   </div> 
       </div>          
       
       <section> 
       
       	<div class="row">
       	<div class="col-md-6 center" >
            <div class="form-group row" >
				    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">글 제목</label>
				    <div class="col-sm-10">
				      <input type="email" class="form-control form-control-lg" id="colFormLabelLg" placeholder="글 제목을 입력해주세요.">
				    </div>
			 </div>
			 </div>
		</div>
    
	<!-- 처음 -->
	<div class="container emp-profile" style="font-family: 'Noto Sans KR', sans-serif;">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="../img/bear2.jpg" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                프로필 사진 변경
                                <input type="file" name="file"/>
                            </div>
                        </div>
                        
                     <div>
                  		<h3 class="center">memberId 님</h3>
                  	</div>
                        
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
							  <div class="form-group row">
							    <label for="project_name" class="col-sm-4 col-form-label">프로젝트 이름</label>
							    <div class="col-sm-8">
							      <input type="text" class="form-control" id="project_name" name="project_name" placeholder="프로젝트 이름을 입력해주세요.">
							    </div>	 
							  </div>
							   <br>
							   
						  <div class="form-group row">
							    <label for="project_name" class="col-sm-4 col-form-label">프로젝트 간단 설명</label>
							    <div class="col-sm-8">
							      <input type="text" class="form-control" id="project_simple" name="project_simple" placeholder="프로젝트를 간단하게 설명해주세요.">
							    </div>
							  </div>
							  <br>
							  
							<div class="form-group row">
							    <label for="project_name" class="col-sm-4 col-form-label">지원 유/무료 여부</label>
							    <div class="col-sm-8">
							      <label for="check1"> 무료  </label>
								    <input type="checkbox" name="check1" id="check1" value="free" class="checkbox1">
								    <label for="check1">유료</label>
								    <input type="checkbox" name="check1" id="check1" value="non-free" class="checkbox2">
								    
								    <input type="number" name="amount" id="amount" placeholder="원하는 가격을 입력해주세요."> 원
							    </div>
							  </div>
							<br>
							
							
							<div class="form-group row">
							    <label for="project_name" class="col-sm-4 col-form-label">프로젝트 기간  </label>
							    <div class="col-sm-8">
                                        <input type="date" id="start_date" name="trip-start" min="2021-08-01" max="2025-12-31"> ~ 
                                       <input type="date" id="end_date" name="trip-start" min="2021-08-01" max="2025-12-31">
                                 </div>
                       
                              </div>
                            <ul class="nav nav-tabs" id="myTab" role="tablist" style="padding-top:20%">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">리더 소개</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">프로젝트 소개</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                  
                 
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                        <hr>
	                           <h5 class="center">모집 분야</h5>
	                           <br>
	                            <!-- 동적 생성 -->
	                            <select name="order" form="myForm">
								    <option value="1">프론트</option>
								    <option value="2">백엔드</option>
								    <option value="3">AOS</option>
								    <option value="4">IOS</option>
								    <option value="5">서버</option>
								    <option value="6">UI/UX</option>
								     <option value="7">기획</option>
								        <option value="8">PM</option>
								</select>
							
								  <input type="number" name="amount" id="amount" min="1" max="20"> 명
								  <div class="buttons">            
								        <input type="text" name="txt"> <input type="button" id="btnAdd" value="Add"><br>        
								     </div>    
								    
                        </div>
                    </div>
                      <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

					            <textarea class="form-control" id="exampleFormControlTextarea1" name="contents" rows="8"
					            style="width:630px; height:400px;"></textarea>

                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                              <textarea class="form-control" id="exampleFormControlTextarea1" name="contents" rows="8"
					            style="width:630px; height:400px;"></textarea>
               
                            </div>
                            
                            <button type="button" id="test" >등록하기</button>
                        </div>
                    </div>
                </div>
            </form>           
        </div>

	<!-- 끝 -->
 </section>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
   
</body>
</html>