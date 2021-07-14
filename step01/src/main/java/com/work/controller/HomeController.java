package com.work.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.work.dto.Member;



@Controller
public class HomeController {
	
	@RequestMapping("/")
	@ResponseBody
	public String home() {
		return "시작화면";
	}
	
	@RequestMapping("/array")
	@ResponseBody
	public int[] showArray() { // 10, 20, 30
		// return new int[] {10, 20, 30};
		int[] nos = new int[5];
		for(int index=0, init=10; index < 3; index++, init += 10) {
			nos[index] = init;
		}
		return nos;	// JSON : [10, 20, 30]
	}
	
	
	@RequestMapping("/member")
	@ResponseBody
	public Member showMember() {
		Member dto = new Member("user01", "password01", "홍길동", "010-1234-1111","user01@work.com", "2021-07-14","G", 1000, null);
		System.out.println(dto);
		// Member(member_Id=user01, member_Pw=password01, name=홍길동, mobile=010-1234-1111, email=user01@work.com, entry_Date=2021-07-14, grade=G, mileage=1000, manager=null)

			return dto;
			// JSON 형식 반환 : {"member_Id":"user01","member_Pw":"password01","name":"홍길동","mobile":"010-1234-1111","email":"user01@work.com","entry_Date":"2021-07-14","grade":"G","mileage":1000,"manager":null}
	}
	
	@RequestMapping("/member2")
	@ResponseBody
	public Member showMember2() {
		// Member dto = new Member("user02", "password02", "강감찬");
		// Member dto = new Member("강감찬","user02", "password02","010-1234-1112");
		// 일부 데이터 지정 객체 생성
		// @ Builder(Builder Pattern)
		// Builder를 이용한 객체 생성 방법 : 클래스명.builder().프로퍼티명(data).프로퍼티명(data).build();
		return Member.builder()
				.memberId("user02")
				.memberPw("password02")
				.name("강감찬")
				.build();
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public List<String> showList() {
		List<String> list = new ArrayList<String>();
		list.add("hello");
		list.add("안녕");
		return list; // JSON : ["hello", "안녕"]
	}
	
	@RequestMapping("/map")
	@ResponseBody
	// Map 에서 다양한 객체를 담을 경우에는 Object로 선언, 밑에는 맴버 등 다른걸로 선택해도 상관없음
	public Map<String, Object> showMemberMap() {
		Member dto1 = Member.builder().memberId("user01").name("홍길동").mobile("010-1234-1111").grade("G").build();
		Member dto2 = Member.builder().memberId("user02").name("강감찬").mobile("010-1234-1112").grade("S").build();
		Member dto3 = Member.builder().memberId("user03").name("이순신").mobile("010-1234-1113").grade("A").build();
		
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put(dto1.getMemberId(), dto1);
		map1.put(dto2.getMemberId(), dto2);
		map1.put(dto3.getMemberId(), dto3);
		
		Map<String, Object> map2 = new LinkedHashMap<String, Object>();
		map2.put(dto1.getMemberId(), dto1);
		map2.put(dto2.getMemberId(), dto2);
		map2.put(dto3.getMemberId(), dto3);
		
		// 나중 DB에서 desc 를 통해 순서 조정 가능함
		// 반환타입이 interface인 유연한 어플리케이션 : Map을 구현한 모든 Map 클래스 사용 가능함
		// return map1; // HashMap : 순서보장 하지 않음
		 return map2; // LinkedHashMap : 순서보장 
	}
	
}
