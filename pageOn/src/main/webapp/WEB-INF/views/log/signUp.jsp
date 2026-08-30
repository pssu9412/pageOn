<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" data-layout="horizontal" data-topbar-color="dark">
	
	<head>
	    <meta charset="utf-8" />
	    <title>Page On</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
	    <meta content="Coderthemes" name="author" />
	
	    <!-- App favicon -->
	    <link rel="shortcut icon" href="${contextPath}/assets/images/pageon/logo-gray.jpeg">
	
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
	                <div class="card login-card card-signup">
	
	                    <div class="card-body p-4">
	
	                        <div class="text-center mb-4">
	                            <div class="auth-brand">
	                                <a href="index.html" class="logo logo-dark text-center">
	                                    <span class="logo-lg">
	                                        <!-- 로고 부분? -->
	                                        <img src="${contextPath}/assets/images/pageon/logo-gray.jpeg" alt="" height="100">
	                                    </span>
	                                </a>
	<!-- 
	                                <a href="index.html" class="logo logo-light text-center">
	                                    <span class="logo-lg">
	                                        <img src="${contextPath}/assets/images/logo-light.png" alt="" height="22">
	                                    </span>
	                                </a> -->
	                            </div>
	                        </div>
	
	                        <div >
	                            <form id="signup-form">
	                                <div class="mb-3">
	                                    <label for="signup-id" class="form-label">아이디</label>
	                                
	                                    <div class="input-group">
	                                        <input class="form-control" type="text" id="signup-id" 
	                                        			 name="memId" placeholder="5~20자 영문, 숫자 입력">
	                                        <button class="btn btn-dark" type="button" id="check-id-btn">
	                                            중복확인
	                                        </button>
	                                    </div>
	                                
	                                    <div class="invalid-feedback">
	                                        아이디는 5~20자 영문/숫자로 입력해주세요
	                                    </div>
	                                </div>
	                            
	                                <div class="mb-3">
	                                    <label for="signup-pw" class="form-label">비밀번호</label>
	                                
	                                    <div class="input-group mb-2">
	                                        <input class="form-control" type="password" id="signup-pw"
	                                               name="memPw" placeholder="8자 이상, 영문/숫자/특수문자 중 2가지 이상 입력">
	                                        <button class="btn btn-outline-secondary toggle-pw" type="button" data-target="signup-pw">
	                                            <i class="bi bi-eye-slash"></i>
	                                        </button>
	                                    </div>
	                                
	                                    <div class="input-group">
	                                        <input class="form-control" type="password" id="signup-cpw" placeholder="비밀번호 확인">
	                                        <button class="btn btn-outline-secondary toggle-pw" type="button" data-target="signup-cpw">
	                                            <i class="bi bi-eye-slash"></i>
	                                        </button>                                    
	                                    </div>
	                                
	                                    <div class="invalid-feedback d-block pw-feedback" style="display:none !important;">
	                                        8자 이상, 영문/숫자/특수문자 중 2가지 이상 입력해주세요
	                                    </div>
	                                
	                                    <div class="invalid-feedback d-block cpw-feedback" style="display:none !important;">
	                                        비밀번호가 일치하지 않습니다.
	                                    </div>
	                                </div>
	                            
	                                <div class="mb-3">
	                                    <label for="signup-email" class="form-label">이메일</label>
	                                    <div class="input-group">
	                                        <input class="form-control" type="email" id="signup-email"
	                                        			 name="memEmail" placeholder="이메일 입력">
	                                        <button class="btn btn-dark" type="button" id="email-btn">인증번호 발송</button>
	                                    </div>
	                                    <div class="invalid-feedback d-block email-feedback" style="display:none !important;">
	                                        올바른 이메일을 입력해주세요
	                                    </div>
	                                </div>
	                                <div class="mb-3 d-none" id="ecode-area">
																    <div class="input-group">
																        <input class="form-control" type="text" id="email-code"
																               placeholder="인증번호 6자리 입력" maxlength="6" disabled>
																
																        <button class="btn btn-dark" type="button"  id="ecode-btn" disabled>
																            인증확인
																        </button>
																    </div>
																
																    <div class="invalid-feedback d-block ecode-feedback" style="display:none !important;">
																        인증번호가 일치하지 않습니다.
																    </div>
																</div>
	                            
	                                <div class="mb-3">
	                                    <label for="signup-name" class="form-label">이름</label>
	                                    <input class="form-control" type="text" id="signup-name" placeholder="이름 입력" name="memName">
	                                    <div class="invalid-feedback">이름을 입력해주세요</div>
	                                </div>
	                            
	                                <div class="mb-3">
	                                    <label for="signup-phone" class="form-label">핸드폰 번호</label>
	                                    <input class="form-control" type="text" id="signup-phone"
	                                    			 name="memPhone" placeholder="010-0000-0000">
	                                    <div class="invalid-feedback">핸드폰 번호 형식이 올바르지 않습니다</div>
	                                </div>
	                            
	                                <div class="mb-3">
	                                    <label for="signup-nick" class="form-label">닉네임</label>
	                                
	                                    <div class="input-group">
	                                        <input class="form-control" type="text" id="signup-nick" 
	                                               name="memNickname" placeholder="닉네임 입력">
	                                        <button class="btn btn-dark" type="button" id="check-nick-btn">
	                                            중복확인
	                                        </button>
	                                    </div>
	                                
	                                    <div class="invalid-feedback">
	                                        닉네임을 입력해주세요
	                                    </div>
	                                </div>
	                            
	                                <div class="mb-3">
	                                    <label class="form-label">[선택] 출생 연도 및 성별</label>
	                                    <div class="d-flex gap-2">
	                                        <select class="form-select" id="signup-birth" name="birthYear">
	                                            <option value="">출생연도</option>
	                                        </select>
	                            
	                                        <div class="btn-group w-50" role="group">
	                                            <input type="radio" class="btn-check" name="gender" id="gender-m" value="M">
	                                            <label class="btn btn-outline-secondary" for="gender-m">남</label>
	                            
	                                            <input type="radio" class="btn-check" name="gender" id="gender-f" value="F">
	                                            <label class="btn btn-outline-secondary" for="gender-f">여</label>
	                                        </div>
	                                    </div>
	                                </div>
	                            
	                                <div class="form-check mb-3">
	                                    <input type="checkbox" class="form-check-input" id="age-check">
	                                    <label class="form-check-label" for="age-check">[필수] 만 14세 이상입니다.</label>
	                                    <div class="invalid-feedback">필수 항목입니다</div>
	                                </div>
	                            
	                                <button class="btn btn-dark w-100" type="submit">회원 가입</button>
	                            </form>
	                        </div> <!-- end col -->
	                    
	                    </div> <!-- end card-body -->
	                </div>
	                <!-- end card -->
	            </div>
	            <!-- end row -->
	        </div>
	        <!-- end container -->
	    </div>
	    <!-- end page -->
	
	    <jsp:include page="/WEB-INF/views/common/footer.jsp" />
	
	        
	    <!-- Vendor js -->
	    <script src="${contextPath}/assets/js/vendor.min.js"></script>
	
	    <!-- App js -->
	    <script src="${contextPath}/assets/js/app.min.js"></script>
	
	    <!-- Authentication js -->
	    <!-- <script src="${contextPath}/assets/js/pages/authentication.init.js"></script> -->
	
	    <script>
			    const contextPath = "${contextPath}";
			</script>
			<script src="${contextPath}/assets/js/sign-up.js"></script>
				
	</body>

</html>