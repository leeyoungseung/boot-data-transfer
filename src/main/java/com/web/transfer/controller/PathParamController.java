package com.web.transfer.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.transfer.dto.Member;
import com.web.transfer.service.MemberService;

@Controller
public class PathParamController {
	
	@Autowired
	MemberService memberService;
	
	
	@RequestMapping(value="/pathParamData")
	public String paramExMain() {
		System.out.println("PathParam Example Main");
		return "pathParam/pathParamMain";
	}
	
	@RequestMapping(value = "/pathParamData/usingPathParamId/{id}", method = RequestMethod.GET)
	public String pathParamExInt(
			@PathVariable(required = false) Integer id
			,Model model) {
		
		if (id == null) {
			System.out.println("PathParam is Null");
			return "redirect:/pathParamData";
		}
		
		Member member = null;
		
		member = memberService.getMemberOne(id);
		System.out.println("case <1>");
		
		List <Member> list = new ArrayList<Member>();
		list.add(member);
		model.addAttribute("list",list);
		
		if (list.size() < 0) {
			System.out.println("PathParam result is Null");
			return "redirect:/pathParamData";
		}
		
		return "pathParam/usingPathParam";
	}
	
	@RequestMapping(value = "/pathParamData/usingPathParamEmail/{email}", method = RequestMethod.GET)
	public String pathParamExStr(
			@PathVariable(required = true) String email
			,Model model) {
		
		if (email == null || email.equals("")) {
			System.out.println("PathParam is Null");
			return "redirect:/pathParamData";
		}
		
		Member member = null;
		
		member = memberService.getMemberOne(email);
		System.out.println("case <2>");

		List <Member> list = new ArrayList<Member>();
		list.add(member);
		model.addAttribute("list",list);
		
		if (list.size() < 0) {
			System.out.println("PathParam result is Null");
			return "redirect:/pathParamData";
		}
		
		
		return "pathParam/usingPathParam";
	}
	
	@RequestMapping(value = "/pathParamData/usingPathParam/{id}/{email}", method = RequestMethod.GET)
	public String pathParamEx(
			@PathVariable Integer id,
			@PathVariable String email
			,Model model) {
		
		if (id == null || email == null || email.equals("")) {
			System.out.println("PathParam is Null");
			return "redirect:/pathParamData";
		}
		
		Member member1 = null;
		Member member2 = null;
		
		member1 = memberService.getMemberOne(id);
		member2 = memberService.getMemberOne(email);
		System.out.println("case <3>");

		List <Member> list = new ArrayList<Member>();
		list.add(member1);
		list.add(member2);
		
		model.addAttribute("list",list);
		
		if (list.size() < 0) {
			System.out.println("PathParam result is Null");
			return "redirect:/pathParamData";
		}
		
		return "pathParam/usingPathParam";
	}
}
