package com.gd.pageon.service;

import org.springframework.stereotype.Service;

import com.gd.pageon.dao.MemberDao;
import com.gd.pageon.dto.MemberDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MemberServiceImpl implements MemberService {
	
	private final MemberDao memberDao;

	@Override
	public MemberDto selectMem(MemberDto m) {
		
		MemberDto loginUser = memberDao.selectMem(m);
		
		return loginUser;
	}

	@Override
	public MemberDto socialLogin(MemberDto m) {
		
		MemberDto loginUser = memberDao.selectSocialMem(m);

	    if(loginUser == null) {
	        memberDao.insertSocialMem(m);
	        loginUser = memberDao.selectSocialMem(m);
	    }

	    return loginUser;
	}

	// 중복체크
	@Override
	public int selectCheckId(String checkId) {
		return memberDao.selectCheckId(checkId);
	}

	@Override
	public int selectCheckNickname(String checkNickname) {
		return memberDao.selectCheckNickname(checkNickname);
	}

	// 회원가입
	@Override
	public int insertMem(MemberDto m) {
		return memberDao.insertMem(m);
	}

	@Override
	public int updateProfile(MemberDto m) {
		return 0;
	}

	@Override
	public int updateMem(MemberDto m) {
		return 0;
	}

	@Override
	public int deleteMem(int memNo) {
		return 0;
	}


	

}
