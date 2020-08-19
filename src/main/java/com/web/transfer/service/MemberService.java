package com.web.transfer.service;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.web.transfer.dto.Member;

@Service
public class MemberService {
	
	Member [] ary = new Member[]{
		new Member(0,"admin",new Date(),"admin@gmail.com")
		,new Member(1,"lee-y001",new Date(),"lee-y001@gmail.com")
		,new Member(2,"lee-y002",new Date(),"lee-y002@gmail.com")
		,new Member(3,"lee-y003",new Date(),"lee-y003@gmail.com")
		,new Member(4,"lee-y004",new Date(),"lee-y004@gmail.com")
		,new Member(5,"lee-y005",new Date(),"lee-y005@gmail.com")
		,new Member(6,"lee-y006",new Date(),"lee-y006@gmail.com")
		,new Member(7,"lee-y007",new Date(),"lee-y007@gmail.com")
		,new Member(8,"lee-y008",new Date(),"lee-y008@gmail.com")
		,new Member(9,"lee-y009",new Date(),"lee-y009@gmail.com")
		,new Member(10,"lee-y010",new Date(),"lee-y010@gmail.com")
		,new Member(11,"lee-y011",new Date(),"lee-y011@gmail.com")
		,new Member(12,"lee-y012",new Date(),"lee-y012@gmail.com")
		,new Member(13,"lee-y013",new Date(),"lee-y013@gmail.com")
	};
	
	/**
	 * id로 Member객체 검색
	 * @param id
	 * @return
	 */
	public Member getMemberOne(Integer id) {
		Member member = null;
		
		for (Member m : ary) {
			if (m.getId() == id) {
				member = m;
				break;
			}
		}
		
		return member;
	}
	
	/**
	 * email로 Member객체 검색
	 * @param email
	 * @return
	 */
	public Member getMemberOne(String email) {
		Member member = null;
		
		for (Member m : ary) {
			if (m.getEmail().equals(email)) {
				member = m;
				break;
			}
		}
		
		return member;
	}

}
