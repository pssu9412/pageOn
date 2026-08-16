package com.gd.pageon.dto;

import java.util.Date;

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

public class MemberDto {
	
	private int memNo;
	private String memId;
	private String memPw;
	private String memName;
	private String memEmail;
	private String memNickname;
	private String memPhone;
	private String memLevel;
	private String memBank;
	private int bankNum;
	private int memPoint;
	private String memProfile;
	private String adultYN;
	private String memStatus;
	private Date memReg;
	private Date memModify;
	private Date memEnd;
	private int postPanalty;  
	private int workPanalty;
	private String favorYN;  //알람여부
	private String boardYN;  //알람여부
	private String myworkYN; //알람여부
	private String loginType; //소셜로그인타입
	private String socialId;

}
