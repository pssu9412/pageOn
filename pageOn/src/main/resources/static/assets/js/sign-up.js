
const form = document.querySelector("#signup-form");

const signupId = document.querySelector("#signup-id");
const signupPw = document.querySelector("#signup-pw");
const signupCpw = document.querySelector("#signup-cpw");
const signupEmail = document.querySelector("#signup-email");
const emailCode = document.querySelector("#email-code");
const ecodeFeedback = document.querySelector(".ecode-feedback");
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

let emailVerified = false;


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

function validateId() {
    const regex = /^[a-zA-Z0-9]{5,20}$/;

    if (regex.test(signupId.value)) {
        setValid(signupId);
        return true;
    }

    setInvalid(signupId);
    return false;
}

$("#check-id-btn").on("click", function() {

    // 아이디 형식부터 검사
    if (!validateId()) {
    	alert("잘못된 아이디입니다.");
      return;
    }

    $.ajax({
    	
      url: contextPath + "/check-id",
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
        url: contextPath + "/check-nick",
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

signupEmail.addEventListener("input", function() {

    emailVerified = false;
		
		$("#ecode-area").addClass("d-none"); // 인증번호 입력창 숨기기

    $("#email-code")
        .val("")
        .prop("disabled", true)
        .removeClass("is-valid is-invalid");

    $("#ecode-btn")
        .text("인증확인")
        .prop("disabled", true);

    hideFeedback(ecodeFeedback);

    validateEmail();
});

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


// 이메일 
$("#email-btn").on("click", function() {

    if (!validateEmail()) {
        alert("이메일을 먼저 올바르게 입력해주세요.");
        return;
    }

    $.ajax({
        url: contextPath + "/send-ecode",
        type: "post",
        data: {
            email: signupEmail.value
        },
        success: function(result) {

            if (result) {
                alert("인증번호를 발송했습니다.");
								
								$("#ecode-area").removeClass("d-none"); // 인증번호 입력창 표시

                emailVerified = false;

                $("#email-code")
                    .val("")
                    .prop("disabled", false);

                $("#ecode-btn")
                    .text("인증확인")
                    .prop("disabled", false);

            } else {
                alert("인증번호 발송에 실패했습니다.");
            }
        },
        error: function() {
            alert("인증번호 발송 중 오류가 발생했습니다.");
        }
    });
});


$("#ecode-btn").on("click", function() {

    const code = emailCode.value.trim();

    if (code.length !== 6) {
        setInvalid(emailCode);
        showFeedback(ecodeFeedback);
        return;
    }

    $.ajax({
        url: contextPath + "/check-ecode",
        type: "post",
        data: {
            code: code
        },
        success: function(result) {

            if (result) {

                emailVerified = true;

                setValid(emailCode);
                hideFeedback(ecodeFeedback);

                $("#ecode-btn")
                    .text("인증완료")
                    .prop("disabled", true);

                alert("이메일 인증이 완료되었습니다.");

            } else {

                emailVerified = false;

                setInvalid(emailCode);
                showFeedback(ecodeFeedback);
            }
        }
    });
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
    
    if (!emailVerified) {
        alert("이메일 인증을 완료해주세요.");
        return;
    }

    $.ajax({
        url: contextPath + "/signup",
        type: "post",
        data: $("#signup-form").serialize(),
        // serialize() = name 값 전부 넘겨주는 jQuery 메서드

        success: function(result) {

            if(result > 0) {
                alert("회원가입이 완료되었습니다.");
                location.href = contextPath + "/login";
            } else {
                alert("회원가입에 실패했습니다.");
            }
        }
    });
});
