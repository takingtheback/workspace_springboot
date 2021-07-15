package com.work.dto;

import lombok.Builder;
import lombok.Data;

/** 회원 도메인 클래스 9개 속성 정의하세요 
 * toString() 재정의 : 비밀번호, 휴대폰은 제외
 */
@Data
@Builder
public class Member {

	private String memberId;
	private String memberPw;
	private String name;
	private String mobile;
	private String email;
	private String entry_Date;
	private String grade;
	private int mileage;
	private String manager;
	
	
	
	
}
