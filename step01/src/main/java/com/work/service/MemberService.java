package com.work.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.work.dto.Member;

@Service
public class MemberService {
	// ArrayList<Member> 멤버변수
	
	private ArrayList<Member> list = new ArrayList<Member>();
	
	public MemberService() {
		initMember();
		System.out.println("MemberService() Constructor loading");
	}
	
	private void initMember() {
		Member dto1 = Member.builder().memberId("user01").memberPw("password01")
		.name("홍길동").mobile("010-1234-1111").email("user01@work.com").entry_Date("2021-05-14")
		.grade("G").mileage(1000).build();
		
		Member dto2 = Member.builder().memberId("user02").memberPw("password02")
				.name("강감찬").mobile("010-1234-1112").email("user02@work.com").entry_Date("2021-06-14")
				.grade("S").mileage(1000).build();
		
		Member dto3 = Member.builder().memberId("user03").memberPw("password03")
				.name("이순신").mobile("010-1234-1113").email("user03@work.com").entry_Date("2021-07-14")
				.grade("A").mileage(1000).build();
		
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
	}
	
	public int getSize() {
		return list.size();
	}
}
