package com.gd.pageon.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MainPageDto {

	private String genreName;				// 메인장르명
	//private List<EventDto> EventList;		// 이벤트배너
	private List<WorkDto> newWorkList;		// 신작
	private List<WorkDto> purchaseBestWorkList;	// 구매베스트
	private List<WorkDto> favoriteBestWorkList;	// 선호베스트
	private List<WorkDto> latestWorkList;		// 최신업데이트
}
