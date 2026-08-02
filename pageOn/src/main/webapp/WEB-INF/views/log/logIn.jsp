<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko" data-layout="horizontal" data-topbar-color="dark">

    <head>
	    <meta charset="utf-8" />
	    <title>Page On</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
	    <meta content="Coderthemes" name="author" />
	
	    <script src="https://t1.kakaocdn.net/kakao_js_sdk/${VERSION}/kakao.min.js" integrity="${INTEGRITY_VALUE}" crossorigin="anonymous"></script>
	
	    <script>
	        // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해야 합니다.
	        Kakao.init("349071cdf325faed2a604a2e6537f88f")
	
	        // SDK 초기화 여부를 판단합니다.
	        console.log(Kakao.isInitialized())
	    </script>
	
	    <!-- App favicon -->
	    <link rel="shortcut icon" href="${contextPath}/assets/images/pageon/logo-gray.jpeg">

			<!-- Theme Config Js -->
			<script src="${contextPath}/assets/js/head.js"></script>
	
			<!-- Bootstrap css -->
			<link href="${contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" id="app-style" />
	
			<!-- App css -->
			<link href="${contextPath}/assets/css/app.min.css" rel="stylesheet" type="text/css" />
	
			<!-- Icons css -->
			<link href="${contextPath}/assets/css/icons.min.css" rel="stylesheet" type="text/css" />

        <link rel="stylesheet" href="${contextPath}/assets/css/ssu-custom.css"> 
    </head>

    <body>

        <div class="account-pages mt-5 mb-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-auto">
                        <div class="card login-card">

                            <div class="card-body p-4">
                                
                                <div class="text-center w-50 m-auto">
                                    <div class="auth-brand">
                                        <a href="index.html" class="logo">
                                            <span class="logo-lg">
                                                <!-- 로고 부분? -->
                                                <img src="${contextPath}/assets/images/pageon/logo-gray.jpeg" alt="" height="100">
                                            </span>
                                        </a>
                    
                                    </div>
                                    <div id="login-feedback" class="text-danger small mt-2" style="display:none;">
                                        입력 정보를 다시 확인하세요.
                                    </div>
                                    <!-- <p class="text-muted mb-4 mt-3">Enter your email address and password to access admin panel.</p> -->
                                </div>

                                
                                <form action="#">

                                    <div class="mb-3">
                                        <label for="id" class="form-label">아이디</label>
                                        <input class="form-control" type="text" id="id" required="" placeholder="Enter your id">
                                    </div>

                                    <div class="mb-3">
                                        <label for="password" class="form-label">비밀번호</label>
                                        <div class="input-group input-group-merge">
                                            <input type="password" id="password" class="form-control" placeholder="Enter your password">
                                            <div class="input-group-text" data-password="false">
                                                <span class="password-eye"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="checkbox-signin" checked>
                                            <label class="form-check-label" for="checkbox-signin">로그인 상태 유지</label>
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <button class="btn btn-dark" type="submit" style="width: 200px;"> Log In </button>
                                    </div>

                                </form>

                                <div class="text-center">
                                    <ul class="social-list list-inline mt-3 mb-0">
                                        <li class="list-inline-item">
                                            <a href="#" class="social-list-item border-info text-info">
                                                <img src="${contextPath}/assets/images/brands/g-suite.png" style="width:20px;"></a>
                                        </li>
                                        <!-- 카카오, 네이버 추가하기 -->
                                        <li class="list-inline-item">
                                            <a href="#" class="social-list-item border-info text-info">
                                                <img src="${contextPath}/assets/images/brands/naver.png" style="width:20px;"></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="#" onclick="kakaoLogin(); return false;" class="social-list-item border-secondary text-secondary">
                                                <img src="${contextPath}/assets/images/brands/kakao.png" style="width:20px;"></a>
                                        </li>
                                    </ul>
                                    <div class="row mt-3">
                                        <div class="col-12 text-center">
                                            <p> <a href="auth-recoverpw.html" class="text-black-50 ms-1">아이디 찾기</a> 
                                                |<a href="auth-recoverpw.html" class="text-black-50 ms-1">비밀번호 찾기</a> 
                                                |<a href="auth-register.html" class="text-black-50 ms-1">회원가입</a> </p>
                                        </div> <!-- end col -->
                                    </div>
                                </div>

                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end page -->


        <footer class="footer footer-alt">
            &copy;by <a href="" class="text-black-50">PageOn</a> 
        </footer>

        <!-- Authentication js -->
        <script src="${contextPath}/assets/js/pages/authentication.init.js"></script>

        <script>
            const form = document.querySelector("form");
            const idInput = document.querySelector("#id");
            const pwInput = document.querySelector("#password");
            const feedback = document.querySelector("#login-feedback");

            form.addEventListener("submit", function (e) {
                e.preventDefault();

                const id = idInput.value.trim();
                const pw = pwInput.value.trim();

                // 테스트용
                if (id === "admin" && pw === "1234") {
                    feedback.style.display = "none";

                    location.href = "영주_상단바.html";
                } else {
                    feedback.style.display = "block";
                }
            });

            // 카카오 소셜 로그인
            function kakaoLogin() {
                Kakao.Auth.authorize({
                    redirectUri: 'http://localhost:8080/pageon/login/kakao'
                });
            }
        </script>

    </body>
</html>