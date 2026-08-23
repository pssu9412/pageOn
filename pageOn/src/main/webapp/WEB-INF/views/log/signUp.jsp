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
	                                        <button class="btn btn-dark" type="button" id="email-btn">인증메일 발송</button>
	                                    </div>
	                                    <div class="invalid-feedback d-block email-feedback" style="display:none !important;">
	                                        올바른 이메일을 입력해주세요
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
	        const form = document.querySelector("#signup-form");
	
	        const signupId = document.querySelector("#signup-id");
	        const signupPw = document.querySelector("#signup-pw");
	        const signupCpw = document.querySelector("#signup-cpw");
	        const signupEmail = document.querySelector("#signup-email");
	        const signupName = document.querySelector("#signup-name");
	        const signupPhone = document.querySelector("#signup-phone");
	        const signupNick = document.querySelector("#signup-nick");
	        const ageCheck = document.querySelector("#age-check");
	        const birthSelect = document.querySelector("#signup-birth");
	
	        const pwFeedback = document.querySelector(".pw-feedback");
	        const cpwFeedback = document.querySelector(".cpw-feedback");
	        const emailFeedback = document.querySelector(".email-feedback");
	        
	        let idChecked = false;
	        
	        let nickChecked = false;
	        
	
	        // 출생연도
	        const currentYear = new Date().getFullYear();
	        for (let year = currentYear; year >= 1900; year--) {
	            const option = document.createElement("option");
	            option.value = year;
	            option.textContent = year;
	            birthSelect.appendChild(option);
	        }
	
	        function setValid(input) {
	            input.classList.remove("is-invalid");
	            input.classList.add("is-valid");
	        }
	
	        function setInvalid(input) {
	            input.classList.remove("is-valid");
	            input.classList.add("is-invalid");
	        }
	
	        function showFeedback(el) {
	            el.style.setProperty("display", "block", "important");
	        }
	
	        function hideFeedback(el) {
	            el.style.setProperty("display", "none", "important");
	        }
	
	        function validateName() {
	            if (signupName.value !== "" && !/\s/.test(signupName.value)) {
	                setValid(signupName);
	                return true;
	            }

	            setInvalid(signupName);
	            return false;
	        }
	        
	        $("#check-id-btn").on("click", function() {

	            // 아이디 형식부터 검사
	            if (!validateId()) {
	            	alert("잘못된 아이디입니다.");
	              return;
	            }

	            $.ajax({
	            	
	              url: "${contextPath}/check-id",
	              type: "get",
	              data: {
	                     memId: $("#signup-id").val()
	                    },
	              success: function(result) {
	            	  
	                    if (result > 0) {
	                       // 중복 아이디
	                       alert("이미 사용 중인 아이디입니다.");
	                       idChecked = false;
	                       setInvalid(signupId);

	                    } else {
	                       // 사용 가능
	                       alert("사용 가능한 아이디입니다.");
	                       idChecked = true;
	                       setValid(signupId);
	                       
	                       $("#check-id-btn")
	                       .text("확인완료")
	                       .prop("disabled", true);
	                    }
	                }
	            });
	        });

	
	        function validatePw() {
	            const value = signupPw.value;

	            const hasEng = /[a-zA-Z]/.test(value);
	            const hasNum = /[0-9]/.test(value);
	            const hasSpecial = /[^a-zA-Z0-9\s]/.test(value);
	            const hasSpace = /\s/.test(value);

	            const typeCount = [hasEng, hasNum, hasSpecial].filter(Boolean).length;

	            if (value.length >= 8 && typeCount >= 2 && !hasSpace) {
	                setValid(signupPw);
	                hideFeedback(pwFeedback);
	                return true;
	            }

	            setInvalid(signupPw);
	            showFeedback(pwFeedback);
	            return false;
	        }
	
	        function validateCpw() {
	            if (signupCpw.value !== "" && signupPw.value === signupCpw.value) {
	                setValid(signupCpw);
	                hideFeedback(cpwFeedback);
	                return true;
	            }
	
	            setInvalid(signupCpw);
	            showFeedback(cpwFeedback);
	            return false;
	        }
	
	        function validateEmail() {
	            const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	
	            if (regex.test(signupEmail.value)) {
	                setValid(signupEmail);
	                hideFeedback(emailFeedback);
	                return true;
	            }
	
	            setInvalid(signupEmail);
	            showFeedback(emailFeedback);
	            return false;
	        }
	
	        function validateName() {
	            if (signupName.value !== "") {
	                setValid(signupName);
	                return true;
	            }
	            setInvalid(signupName);
	            return false;
	        }
	
	        function validatePhone() {
	            const regex = /^010-\d{4}-\d{4}$/;
	
	            if (regex.test(signupPhone.value)) {
	                setValid(signupPhone);
	                return true;
	            }
	
	            setInvalid(signupPhone);
	            return false;
	        }
	
	        function validateNick() {
	            if (signupNick.value !== "" && !/\s/.test(signupNick.value)) {
	                setValid(signupNick);
	                return true;
	            }

	            setInvalid(signupNick);
	            return false;
	        }
	        
	        $("#check-nick-btn").on("click", function() {

	            if (!validateNick()) {
	                alert("잘못된 닉네임입니다.");
	                return;
	            }

	            $.ajax({
	                url: "${contextPath}/check-nick",
	                type: "get",
	                data: {
	                    memNickname: $("#signup-nick").val()
	                },
	                success: function(result) {

	                    if (result > 0) {
	                        alert("이미 사용 중인 닉네임입니다.");
	                        nickChecked = false;
	                        setInvalid(signupNick);
	                    } else {
	                        alert("사용 가능한 닉네임입니다.");
	                        nickChecked = true;
	                        setValid(signupNick);
	                        
	                        $("#check-nick-btn")
	                        .text("확인완료")
	                        .prop("disabled", true);
	                    }
	                }
	            });

	        });

	
	        function validateAgeCheck() {
	            if (ageCheck.checked) {
	                ageCheck.classList.remove("is-invalid");
	                return true;
	            }
	            ageCheck.classList.add("is-invalid");
	            return false;
	        }
	
	        // ✅ 전화번호 입력 (하이픈 + 검증 통합)
	        signupPhone.addEventListener("input", function () {
	            let value = signupPhone.value.replace(/[^0-9]/g, "");
	
	            if (value.length > 11) {
	                value = value.slice(0, 11);
	            }
	
	            if (value.length <= 3) {
	                signupPhone.value = value;
	            } else if (value.length <= 7) {
	                signupPhone.value = value.slice(0, 3) + "-" + value.slice(3);
	            } else {
	                signupPhone.value =
	                    value.slice(0, 3) + "-" +
	                    value.slice(3, 7) + "-" +
	                    value.slice(7);
	            }
	
	            validatePhone();
	        });
	
	        // 나머지 input 이벤트
	        signupId.addEventListener("input", function() {

					    idChecked = false;
					
					    $("#check-id-btn")
					        .text("중복확인")
					        .prop("disabled", false);
					
					    validateId();
					});
	        
	        signupPw.addEventListener("input", function () {
	            validatePw();
	            validateCpw();
	        });
	        
	        signupCpw.addEventListener("input", validateCpw);
	        signupEmail.addEventListener("input", validateEmail);
	        signupName.addEventListener("input", validateName);
	        
	        signupNick.addEventListener("input", function() {

	            nickChecked = false;

	            $("#check-nick-btn")
	                .text("중복확인")
	                .prop("disabled", false);

	            validateNick();
	        });
	        
	        ageCheck.addEventListener("change", validateAgeCheck);
	
	        // 비밀번호 보기
	        document.querySelectorAll(".toggle-pw").forEach(function (btn) {
	            btn.addEventListener("click", function () {
	                const target = document.querySelector("#" + btn.dataset.target);
	                const icon = btn.querySelector("i");
	
	                if (target.type === "password") {
	                    target.type = "text";
	                    icon.classList.remove("bi-eye-slash");
	                    icon.classList.add("bi-eye");
	                } else {
	                    target.type = "password";
	                    icon.classList.remove("bi-eye");
	                    icon.classList.add("bi-eye-slash");
	                }
	            });
	        });
	
	        // 이메일 버튼
	        document.querySelector("#email-btn").addEventListener("click", function () {
	            if (!validateEmail()) {
	                alert("이메일을 먼저 올바르게 입력해주세요.");
	                return;
	            }
	            alert("인증메일을 발송했습니다.");
	        });
	
	        // ✅ submit
	        form.addEventListener("submit", function (e) {

					    e.preventDefault();
					
					    if (
					    	    !validateId() ||
					    	    !validatePw() ||
					    	    !validateCpw() ||
					    	    !validateEmail() ||
					    	    !validateName() ||
					    	    !validatePhone() ||
					    	    !validateNick() ||
					    	    !validateAgeCheck()
					    	) return;
					    
					    if (!idChecked) {
					        alert("아이디 중복확인을 해주세요.");
					        return;
					    }
					    
					    if (!nickChecked) {
					        alert("닉네임 중복확인을 해주세요.");
					        return;
					    }
					
					    $.ajax({
					        url: "${contextPath}/signup",
					        type: "post",
					        data: $("#signup-form").serialize(),
					        // serialize() = name 값 전부 넘겨주는 jQuery 메서드

					        success: function(result) {

					            if(result > 0) {
					                alert("회원가입이 완료되었습니다.");
					                location.href = "${contextPath}/login";
					            } else {
					                alert("회원가입에 실패했습니다.");
					            }
					        }
					    });
					});
	        </script>
	
	</body>

</html>