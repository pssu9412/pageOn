package com.gd.pageon.service;

import com.gd.pageon.dto.MemberDto;

public interface MemberService {
	
	//로그인
	MemberDto selectMember(MemberDto m);
	
	//회원 가입
	int selectMemIdCount(String checkId); // 아이디 중복체크
	int insertMember(MemberDto m);
	
	//회원 정보 수정
	int updateProfile(MemberDto m);
	int updateMember(MemberDto m);
	
	//탈퇴
	int deleteMember(String memId);
	
	//아이디 찾기
	
	//비밀번호 찾기 이메일
	
	//비밀번호 찾기 핸드폰
	
	//비밀번호 재설정

}
