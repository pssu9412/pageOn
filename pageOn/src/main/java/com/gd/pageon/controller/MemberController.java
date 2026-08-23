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
	@GetMapping("/check-nickname")
	public int checkNickname(String memNickname) {
		
		return memberService.selectCheckNickname(memNickname);
	}
	
	// 회원가입
	@PostMapping("/signup")
	@ResponseBody
	public int insertMem(MemberDto m) {
		
		// 비밀번호 암호화
		m.setMemPw(bcryptPwdEncoder.encode(m.getMemPw()));
		
	    return memberService.insertMem(m);
	}

}
