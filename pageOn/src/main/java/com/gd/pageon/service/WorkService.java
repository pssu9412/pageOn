package com.gd.pageon.service;

import com.gd.pageon.dto.MainPageDto;

public interface WorkService {
	
	// 메인페이지 조회
	MainPageDto selectMainPage(String genre);

}
