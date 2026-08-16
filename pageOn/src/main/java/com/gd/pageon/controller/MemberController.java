package com.gd.pageon.controller;

import org.springframework.stereotype.Controller;

import com.gd.pageon.service.MemberService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MemberController {
	
	private final MemberService memberService;

}
