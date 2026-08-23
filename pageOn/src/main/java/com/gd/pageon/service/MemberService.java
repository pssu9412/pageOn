package com.gd.pageon.service;

import com.gd.pageon.dto.MemberDto;

public interface MemberService {
	
	// 로그인
	MemberDto selectMem(MemberDto m);
	
	MemberDto socialLogin(MemberDto m);
	
	// 중복 체크
	int selectCheckId(String checkId);
	int selectCheckNickname(String checkNickname);
	
	// 회원 가입
	int insertMem(MemberDto m);

	// 회원 정보 수정
	int updateProfile(MemberDto m);
	int updateMem(MemberDto m);
	
	// 탈퇴
	int deleteMem(int memNo);
	
	// 아이디 찾기
	
	// 비밀번호 찾기 이메일
	
	// 비밀번호 찾기 핸드폰
	
	// 비밀번호 재설정

}
