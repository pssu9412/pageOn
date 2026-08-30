package com.gd.pageon.service;

import java.security.SecureRandom;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.gd.pageon.dao.MemberDao;
import com.gd.pageon.dto.MemberDto;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MemberServiceImpl implements MemberService {
	
	private final MemberDao memberDao;
	private final JavaMailSender mailSender;
	
	@Value("${spring.mail.username}")
	private String mailUsername;

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

	// 이메일 인증번호
	@Override
	public String sendEmailCode(String email) {
		
		SecureRandom random = new SecureRandom();
		String code = String.valueOf(random.nextInt(900000) + 100000);
		
		try {
	        MimeMessage message = mailSender.createMimeMessage();

	        MimeMessageHelper helper = new MimeMessageHelper(message, false, "UTF-8");

	        helper.setFrom(mailUsername);
	        helper.setTo(email);
	        helper.setSubject("[PageOn] 이메일 인증번호");

	        helper.setText(
	        		"<div style='"
        		        + "max-width:500px;"
        		        + "margin:0 auto;"
        		        + "padding:25px;"
        		        + "background-color:#cfd1d4;"
        		        + "border:1px solid #cccccc;"
        		        + "text-align:center;"
        		    + "'>"

        		        + "<h2 style='margin:0;'>PageOn</h2>"

        		        + "<div style='"
        		            + "margin-top:20px;"
        		            + "padding:25px;"
        		            + "background-color:#ffffff;"
        		            + "border:1px solid #cccccc;"
        		            + "text-align:center;"
        		        + "'>"

        		            + "<p style='margin:0 0 15px 0;'>"
        		                + "이메일 인증번호입니다."
        		            + "</p>"

        		            + "<div style='"
        		                + "font-size:30px;"
        		                + "font-weight:bold;"
        		                + "letter-spacing:5px;"
        		            + "'>"
        		                + code
        		            + "</div>"

        		        + "</div>"

        		    + "</div>",
	            true
	        );

	        mailSender.send(message);

	    } catch (MessagingException e) {
	        throw new RuntimeException("인증메일 생성에 실패했습니다.", e);
	    }
		
		return code;
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
