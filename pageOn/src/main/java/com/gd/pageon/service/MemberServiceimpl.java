package com.gd.pageon.service;

import org.springframework.stereotype.Service;

import com.gd.pageon.dao.MemberDao;
import com.gd.pageon.dto.MemberDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MemberServiceimpl implements MemberService {
	
	private final MemberDao memberDao;

	@Override
	public MemberDto selectMember(MemberDto m) {
		return null;
	}

	@Override
	public int selectMemIdCount(String checkId) {
		return 0;
	}

	@Override
	public int insertMember(MemberDto m) {
		return 0;
	}

	@Override
	public int updateProfile(MemberDto m) {
		return 0;
	}

	@Override
	public int updateMember(MemberDto m) {
		return 0;
	}

	@Override
	public int deleteMember(String memId) {
		return 0;
	}

}
