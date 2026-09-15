package com.gd.pageon.service;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClient;

import com.gd.pageon.dto.MemberDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class SocialLoginServiceImpl implements SocialLoginService {
	
	@Override
	public String kakaoAccessToken(String code) {
		
		RestClient restClient = RestClient.create();

	    return null;
	}

	@Override
	public MemberDto kakaoUser(String accessToken) {
		return null;
	}

}
