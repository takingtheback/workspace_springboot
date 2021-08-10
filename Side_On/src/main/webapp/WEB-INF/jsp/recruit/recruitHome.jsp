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
        <section  >
            <div class="container" >
                <div style="padding-top: 1%; padding-bottom: 3%">
                    <h2>프로젝트 모집/지원</h2>
                </div>
		
                <div class="search-container" style="float: left;">
                    <form >
                      <input type="text" placeholder="Search.." name="search">
                      <button type="submit"><i class="fa fa-search"></i></button>
                    </form>
                  </div>
         		<div class="checkbox" >	    
					    <label for="check1">모집 중  </label>
					    <input type="checkbox" name="check1" id="check1" value="1" class="checkbox1">
				</div>
				               
                 <div style="padding-top: 4%">
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