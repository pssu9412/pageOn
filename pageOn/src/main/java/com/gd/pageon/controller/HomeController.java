package com.gd.pageon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.gd.pageon.dto.MainPageDto;
import com.gd.pageon.service.WorkService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class HomeController {
	
	private final WorkService workService;

	
	/**
	 * 메인 화면 조회
	 * 
	 * - 전체 신작, 구매베스트, 선호베스트, 최근 업데이트 작품 12개씩 가져와서 main.jsp로 넘긴다.
	 * 
	 * @author KYJ
	 * @param model
	 * @return main
	 */
	@GetMapping({"/", "/main"})
	public String mainPage(Model model) {
	  
		MainPageDto mainPage = workService.selectMainPage(null);
	
		model.addAttribute("mainPage", mainPage)
			 .addAttribute("currentMenu", "main");

		return "main";
	}

	/**
	 * 장르별 메인화면 조회
	 * 
	 * - 장르별 신작, 구매베스트, 선호베스트, 최근 업데이트 작품 12개씩 가져와서 main.jsp로 넘긴다.
	 * - 장르별 메인화면일 경우 장르명도 main.jsp로 넘긴다.
	 * 
	 * @author KYJ
	 * @param genre
	 * @param model
	 * @return
	 */
	@GetMapping("/{genre}/main")
	public String genreMain(@PathVariable String genre, Model model) {

		MainPageDto mainPage = workService.selectMainPage(genre);

		model.addAttribute("mainPage", mainPage)
			 .addAttribute("currentMenu", genre);

		return "main";
	}
  
}