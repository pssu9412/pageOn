package com.gd.pageon.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
@Builder
public class WorkDto {
	private int workNo;			// 작품번호
	private String workTitle; 	// 작품명
	private String publisher;	// 출판사(조회할 땐 번호 | 결과값은 문자열로)
	private String writer;		// 작가번호(조회할땐 번호 담기 | 결과값은 문자열로)
	private String workInfo;	// 작품소개
	private String workCover;	// 표지 url
	private char genreNo;		// 세부 장르 코드
	private char adultYN;		// 성인 여부
	private char paidYN;		// 유료 여부
	private String workReg;		// 등록일
	private String workLatest;	// 최신등록일
	private int favoriteCnt;	// 선작수
	private String workMod;		// 수정일
	private char serialStatus;	// 연재여부
	private char workStatus;	// 작품상태
}
