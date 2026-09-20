package com.gd.pageon.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClient;

import com.gd.pageon.dto.MemberDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class SocialLoginServiceImpl implements SocialLoginService {
	
	// properties에 있는 값 가져오기
	@Value("${kakao.rest-api-key}")
    private String kakaoRestApiKey;

    @Value("${kakao.redirect-uri}")
    private String kakaoRedirectUri;
	
	@Override
	public String kakaoAccessToken(String code) {
		
		RestClient restClient = RestClient.create();

		Map<String, Object> response = restClient.post()
	            .uri("https://kauth.kakao.com/oauth/token")
	            .contentType(MediaType.APPLICATION_FORM_URLENCODED)
	            .body(
	                "grant_type=authorization_code"
	                + "&client_id=" + kakaoRestApiKey
	                + "&redirect_uri=" + kakaoRedirectUri
	                + "&code=" + code
	            )
	            .retrieve()
	            .body(Map.class);

	    return (String) response.get("access_token");
	}

	@Override
	public MemberDto kakaoUser(String accessToken) {

		RestClient restClient = RestClient.create();

	    Map<String, Object> response = restClient.get()
	            .uri("https://kapi.kakao.com/v2/user/me")
	            .header("Authorization", "Bearer " + accessToken)
	            .retrieve()
	            .body(Map.class);

	    System.out.println(response);

	    return null;
	}

}
