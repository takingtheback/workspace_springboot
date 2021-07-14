package com.work.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/** 회원 도메인 클래스 9개 속성 정의하세요 
 * toString() 재정의 : 비밀번호, 휴대폰은 제외
 */
@Setter
@Getter
@ToString(exclude = {"memberPw","mobile"}, includeFieldNames = false)
@NoArgsConstructor
@AllArgsConstructor
@Builder
// @Data
public class Member {

	private String memberId;
	
	// @ToString.Exclude 
	private String memberPw;
	
	private String name;
	
	// @ToString.Exclude 
	private String mobile;
	
	private String email;
	
	private String entry_Date;
	
	private String grade;
	
	private int mileage;
	
	private String manager;
	
	
	
	
}
