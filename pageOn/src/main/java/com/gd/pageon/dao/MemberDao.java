package com.gd.pageon.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.gd.pageon.dto.MemberDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Repository
public class MemberDao {
	
	private final SqlSessionTemplate sqlSessionTemplate;
	
	 // 일반 로그인
    public MemberDto selectMem(MemberDto m) {
        return sqlSessionTemplate.selectOne("memberMapper.selectMem", m);
    }

    // 소셜 로그인
    public MemberDto selectSocialMem(MemberDto m) {
        return sqlSessionTemplate.selectOne("memberMapper.selectSocialMem", m);
    }
    
    public int insertSocialMem(MemberDto m) {
        return sqlSessionTemplate.insert("memberMapper.insertSocialMem", m);
    }
    
    // 아이디 중복체크
    public int selectCheckId(String checkId) {
    	return sqlSessionTemplate.selectOne("memberMapper.selectCheckId", checkId);
    }
    
    // 닉네임 중복체크
    public int selectCheckNickname(String checkNickname) {
    	return sqlSessionTemplate.selectOne("memberMapper.selectCheckNickname", checkNickname);
    }
    
    // 회원 가입
    public int insertMem(MemberDto m) {
    	return sqlSessionTemplate.insert("memberMapper.insertMem", m);
    }
   

}
