<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 모집/지원 | Side-On</title>
 
<link type="text/css" rel="stylesheet" href="../css/RecruitHome_juri.css">

</head>
<body>
   <%@ include file="../inc/header.jsp" %>
    <!-- Services-->
            <!-- Header-->
        <header class="bg-warning py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                <!-- 헤더...어떻게... -->
                <div style="padding-top: 8%;">
                    <h1 class="display-5 fw-bolder">프로젝트 모집/지원</h1>
            </div>
            </div>
         </div>
        </header>
        
        <section >
	        <div class="row">
			       	<div class="col-md-6 center" >
			
			                <div class="search-container" style="float: left;">
			                    <form >
			                      <input type="text" placeholder="Search.." name="search">
			                      <button type="submit"><i class="fa fa-search"></i></button>
			                    </form>
			                  </div>
			         		<div class="checkbox" style="float: left;">	    
								    <label for="check1">모집 중  </label>
								    <input type="checkbox" name="check1" id="check1" value="1" class="checkbox1">
							</div>
							
							               
			                 <div style="padding-top: 10%" style="float: left;">
			                  	<ul class="tags">
								  <li><a href="#" class="tag">FrontEnd</a></li>
								  <li><a href="#" class="tag">BackEnd</a></li>
								  <li><a href="#" class="tag">AOS</a></li>
								  <li><a href="#" class="tag">IOS</a></li>
								   <li><a href="#" class="tag">Server</a></li>
								   <li><a href="#" class="tag">UI/UX</a></li>
								 <li><a href="#" class="tag">기획</a></li>
								 	<li><a href="#" class="tag">PM</a></li>
								</ul>
			                  </div>
						</div>
				</div>
        </section>
        <!-- Portfolio Grid-->
        <section class="page-section" id="portfolio" style="padding : 0; margin : 0; ">
            <div class="container" style="box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;">
               
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">


	                            <a class="portfolio-link"  href="/recruit/recruitDetail">
	                                <div class="portfolio-hover">
	                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
	                         
	                                </div>
	                                <img class="img-fluid"  src="../img/bear2.jpg" alt="..." />
	                            </a>
	                            
	                            <div class="portfolio-caption">
	                                <div class="portfolio-caption-heading">Threads</div>
	                                <div class="portfolio-caption-subheading text-muted">Illustration</div>
	                            </div>
	                        </div>
                        </div>

                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
								 <img class="img-fluid"  src="../img/bear2.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Explore</div>
                                <div class="portfolio-caption-subheading text-muted">Graphic Design</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                 <img class="img-fluid"  src="../img/bear2.jpg" alt="..." />
                                  </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Finish</div>
                                <div class="portfolio-caption-subheading text-muted">Identity</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
				         	 <img class="img-fluid"  src="../img/bear2.jpg" alt="..." />                      
                                </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Lines</div>
                                <div class="portfolio-caption-subheading text-muted">Branding</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                               <img class="img-fluid"  src="../img/bear2.jpg" alt="..." />
                              	 </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Southwest</div>
                                <div class="portfolio-caption-subheading text-muted">Website Design</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid"  src="../img/bear2.jpg" alt="..." />
                                 </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Window</div>
                                <div class="portfolio-caption-subheading text-muted">Photography</div>
                            </div>
                        </div>
                    </div>
                    
                	<div class="col-md-3 center"  style="padding-top:10%;">     
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