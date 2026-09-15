package com.gd.pageon.service;

import com.gd.pageon.dto.MemberDto;

public interface SocialLoginService {
	
	// 카카오 인가 코드로 access token 발급
    String kakaoAccessToken(String code);

    // access token으로 카카오 회원정보 조회
    MemberDto kakaoUser(String accessToken);

}
