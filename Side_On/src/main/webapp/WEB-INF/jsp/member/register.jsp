<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>회원가입 | Side-On</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/register_sh.css" rel="stylesheet">
    <script>
    
    function idCheck() {
    	var memberId = document.getElementById('memberId').value;
    	alert("아이디 : " + memberId);
    }    
    
    function pwCheck() {
    	var memberPw = document.getElementById('memberPw').value;
    	alert("비밀번호 : " + memberPw);
    }
    
    function nameCheck() {
    	var name = document.getElementById('name').value;
    	alert("이름 : " + name);
    }
    
    function emailCheck() {
    	var email = document.getElementById('email').value;
    	alert("이메일 : " + email);
    }
    
    function mobileCheck() {
    	var mobile = document.getElementById('mobile').value;
    	alert("핸드폰 번호 : " + mobile)
    }

    </script>

</head>

<body class="bg-gradient-warning">
   <!-- navibar -->
       <%@ include file="../inc/header.jsp" %>
    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-login-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                        
                        <br>
                        <br>
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">환영합니다!</h1>
                            </div>
                            
                            <!-- 회원가입 폼 -->
                            <form action='/member/registerDone' method="post" class="user">
                               
                               <!-- 이미지어케바꾸냐.. -->
                                <div class="form-group row">
                               
                               <!-- 아이디 -->
                                <div class="col-sm-8 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" id="memberId" name="memberId"
                                        placeholder="아이디" required="required">
                                </div>
                                <div class="col-sm-4 mb-3 mb-sm-0">
                                   <a href="#" class="btn btn-outline-warning btn-user btn-block">
                                   중복확인
                                </a>
                                </div>
                                </div>
                                
                                <!-- 비밀번호 -->
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                            id="memberPw" name="memberPw" placeholder="비밀번호" required="required">
                                   	</div>
                                   <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                            id="memberPw" name="memberPw" placeholder="비밀번호 확인" required="required">
                                    </div>
                				
                				<!-- 이름 -->
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="name" name="name"
                                        placeholder="이름" required="required">
                                </div>
                                
                                <!-- 이메일 -->
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="email" name="email"
                                        placeholder="이메일 ex)id@mail.com" required="required">
                                </div>
                                
                                <!-- 핸드폰번호 -->
                                  <div class="form-group row">
                                <div class="col-sm-8 mb-3 mb-sm-0">
                                    <input type="text" class="form-control form-control-user" id="mobile" name="mobile"
                                        placeholder="핸드폰번호 ex)010-0000-0000" required="required">
                                </div>
                                 <div class="col-sm-4 mb-3 mb-sm-0">
                                   <a href="#" class="btn btn-outline-warning btn-user btn-block">
                                   인증
                                </a>
                                </div>
                                </div>
                              	
                              	
                                <input type="submit" value='완료' class="btn btn-primary btn-user btn-block" 
                                onclick="idCheck(); pwCheck(); nameCheck(); emailCheck(); mobileCheck();">
                                
                                <a href="/" class="btn btn-light btn-user btn-block">
                                   취소
                                </a>
                              
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="loginForm">이미 회원가입이 되어 있어요!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>