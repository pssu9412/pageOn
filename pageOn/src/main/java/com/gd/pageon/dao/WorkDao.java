package com.gd.pageon.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.gd.pageon.dto.WorkDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Repository
public class WorkDao {
	private final SqlSessionTemplate sqlSessionTemplate;
	
	// 장르명 조회
	public String selectGenreName(int genreNo) {
		return sqlSessionTemplate.selectOne("workMapper.selectGenreName", genreNo);
	}
	
	// 메인 페이지 (신작 조회)
	public List<WorkDto> selectMainNewWorkList(int genreParentNo){
		return sqlSessionTemplate.selectList("workMapper.selectMainNewWorkList", genreParentNo);
	}
	
	// 메인 페이지 (구매 베스트)
	public List<WorkDto> selectMainPurchaseBestWorkList(int genreParentNo){
		return sqlSessionTemplate.selectList("workMapper.selectMainPurchaseBestWorkList", genreParentNo);
	}
	
	// 메인 페이지 (선호 베스트)
	public List<WorkDto> selectMainFavoriteBestWorkList(int genreParentNo){
		return sqlSessionTemplate.selectList("workMapper.selectMainFavoriteBestWorkList", genreParentNo);
	}
	
	// 메인 페이지 (최신 업데이트)
	public List<WorkDto> selectMainLatestWorkList(int genreParentNo){
		return sqlSessionTemplate.selectList("workMapper.selectMainLatestWorkList", genreParentNo);
	}
}
