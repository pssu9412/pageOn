package com.gd.pageon.controller;

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
	
	@GetMapping("/login")
	public String loginPage() {
		return "log/logIn";
	}
	
	@ResponseBody
	@PostMapping("/login")
	public int login(MemberDto m, HttpSession session) {
		
		MemberDto loginUser = memberService.selectMem(m);
		
		// 조회 성공
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return 1;
		}
		
		// 조회 실패
		return 0;
	}

}
