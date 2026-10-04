package com.gd.pageon.service;

import org.springframework.stereotype.Service;

import com.gd.pageon.dao.WorkDao;
import com.gd.pageon.dto.MainPageDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class WorkServiceImpl implements WorkService {
	
	private final WorkDao workDao;

	@Override
	public MainPageDto selectMainPage(String genre) {
		
		int genreParentNo = 0;

	    if (genre != null) {
	        genreParentNo = switch (genre) {
	            case "romance" -> 1;
	            case "romance-fantasy" -> 2;
	            case "fantasy" -> 3;
	            case "bl" -> 4;
	            case "gl" -> 5;
	            default -> 0;
	        };
	    }
		
		MainPageDto mainPage = new MainPageDto();
		
		// 장르별 메인페이지면 장르명도 조회해서 mainPageDto 객체에 담기
		if (genreParentNo != 0) {
	        String genreName = workDao.selectGenreName(genreParentNo);
	        mainPage.setGenreName(genreName);
	    }
		
		
		mainPage.setNewWorkList( workDao.selectMainNewWorkList(genreParentNo) );
		mainPage.setPurchaseBestWorkList( workDao.selectMainPurchaseBestWorkList(genreParentNo) );
		mainPage.setFavoriteBestWorkList( workDao.selectMainFavoriteBestWorkList(genreParentNo) );
		mainPage.setLatestWorkList( workDao.selectMainLatestWorkList(genreParentNo) );
		
		return mainPage;
	}
}
