package com.web.transfer.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.transfer.dto.Member;
import com.web.transfer.service.MemberService;

@Controller
public class ParamController {
	
	@Autowired
	MemberService memberService;
	
	
	@RequestMapping(value="/paramData")
	public String paramExMain() {
		System.out.println("Param Example Main");
		return "param/paramMain";
	}
	
	@RequestMapping(value = "/paramData/usingTag", method = RequestMethod.GET)
	public String paramExUsingATag(
			@RequestParam(required = false) Integer id
			,@RequestParam(required = false) String email
			,Model model) {
		
		if (id == null && (email == null || email.equals(""))) {
			System.out.println("Param is Null");
			return "redirect:/paramData";
		}
		
		Member member = null;
		
		if (id != null && email != null) {
			member = memberService.getMemberOne(id);
			System.out.println("case <1>");
			
		} else if (id != null) {
			member = memberService.getMemberOne(id);
			System.out.println("case <2>");
			
		} else if (!email.equals("")) {
			member = memberService.getMemberOne(email);
			System.out.println("case <3>");
			
		} else {
			System.out.println("Process Error");
			return "redirect:/paramData";
			
		}
		
		model.addAttribute("member",member);
		
		
		return "param/usingTag";
	}

}
