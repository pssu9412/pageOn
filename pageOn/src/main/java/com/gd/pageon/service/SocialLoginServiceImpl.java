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
	
    @Value("${kakao.client-secret}")
    private String kakaoClientSecret;
    
	@Override
	public String kakaoAccessToken(String code) {
		
		RestClient restClient = RestClient.create();

		Map<String, Object> response = restClient.post()
	            .uri("https://kauth.kakao.com/oauth/token")
	            .contentType(MediaType.APPLICATION_FORM_URLENCODED)
	            .body(
	                "grant_type=authorization_code"
	                + "&client_id=" + kakaoRestApiKey
	                + "&client_secret=" + kakaoClientSecret
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
	    
	    String socialId = String.valueOf(response.get("id"));

	    MemberDto member = new MemberDto();
	    member.setSocialId(socialId);
	    member.setLoginType("K"); // DB에서 사용하는 구분값에 맞추기
	    
	    // 카카오 계정 정보 꺼내기
	    Map<String, Object> account =
	            (Map<String, Object>) response.get("kakao_account");

	    if (account != null) {

	        // 이메일을 DTO에 담기
	        member.setMemEmail((String) account.get("email"));

	        // 계정 정보 안의 프로필 꺼내기
	        Map<String, Object> profile =
	                (Map<String, Object>) account.get("profile");

	        if (profile != null) {
	            // 닉네임을 DTO에 담기
	            member.setMemNickname((String) profile.get("nickname"));
	        }
	    }

	    return member;
	}

}
