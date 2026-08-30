package com.gd.pageon.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gd.pageon.dto.MemberDto;
import com.gd.pageon.service.MemberService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MemberController {
	
	private final MemberService memberService;
	private final BCryptPasswordEncoder bcryptPwdEncoder;
	
    // 로그인 페이지 이동
	@GetMapping("/login")
	public String loginPage() {
		
		return "log/logIn";
	}
	
	// 일반 로그인
	@ResponseBody
	@PostMapping("/login")
	public int login(MemberDto m, HttpSession session) {
		
		MemberDto loginUser = memberService.selectMem(m);
		
	    if(loginUser != null 
	            && bcryptPwdEncoder.matches(m.getMemPw(), loginUser.getMemPw())) {

	        // 세션에 비밀번호는 넣지 않도록 제거
	        loginUser.setMemPw(null);

	        session.setAttribute("loginUser", loginUser);
	        return 1;
	    }

	    return 0;
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원가입 페이지 이동
	@GetMapping("/signup")
	public String signupPage() {
		
		return "log/signUp";
	}
	
	// 아이디 중복 체크
	@GetMapping("/check-id")
	@ResponseBody
	public int checkId(String memId) {
		
	    return memberService.selectCheckId(memId);
	}
	
	// 닉네임 중복 체크
	@ResponseBody
	@GetMapping("/check-nick")
	public int checkNickname(String memNickname) {
		
		return memberService.selectCheckNickname(memNickname);
	}
	
	
	// 이메일 인증번호 발송
	@PostMapping("send-ecode")
	@ResponseBody
	public boolean sendEmailCode(String email, HttpSession session) {
		
		String code = memberService.sendEmailCode(email);
		
		session.setAttribute("emailCode", code);
		session.setAttribute("email", email);
		// 재발송 시 기존 인증 상태 초기화
		session.removeAttribute("emailVerified");
		
		return true;
	}
	
	// 이메일 인증번호 확인
	@PostMapping("/check-ecode")
	@ResponseBody
	public boolean checkEmailCode(String code, HttpSession session) {
		
		String checkCode = (String) session.getAttribute("emailCode");
		
		if (checkCode != null && checkCode.equals(code)) {
			
			session.setAttribute("emailVerified", true);
			session.setAttribute("veridiedEmail", session.getAttribute("emeil"));
			
			session.removeAttribute("emailCode");
			
			return true;
			
		}
		
		return false;
	}
	
	// 회원가입
	@PostMapping("/signup")
	@ResponseBody
	public int insertMem(MemberDto m, HttpSession session) {
		
		// 이메일 인증 여부 확인
	    Boolean emailVerified = (Boolean) session.getAttribute("emailVerified");
	    String email = (String) session.getAttribute("email");

	    // 인증 안 됨
	    if (!Boolean.TRUE.equals(emailVerified)) {
	        return 0;
	    }

	    // 인증한 이메일과 실제 가입 이메일이 다를 시
	    if (email == null || !email.equals(m.getMemEmail())) {
	        return 0;
	    }
		
		// 비밀번호 암호화
		m.setMemPw(bcryptPwdEncoder.encode(m.getMemPw()));
		
		int result = memberService.insertMem(m);

	    // 성공 시 인증 관련 세션값 삭제
	    if (result > 0) {
	        session.removeAttribute("emailVerified");
	        session.removeAttribute("email");
	        session.removeAttribute("emailCode");
	    }

	    return result;
	}
		

}
