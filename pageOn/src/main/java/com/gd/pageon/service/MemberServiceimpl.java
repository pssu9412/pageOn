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
		return null;
	}

	@Override
	public MemberDto socialLogin(MemberDto m) {
		
		MemberDto loginMember = memberDao.selectSocialMem(m);

	    if(loginMember == null) {
	        memberDao.insertSocialMem(m);
	        loginMember = memberDao.selectSocialMem(m);
	    }

	    return loginMember;
	}

	@Override
	public int selectMemIdCount(String checkId) {
		return 0;
	}

	@Override
	public int insertMem(MemberDto m) {
		return 0;
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
