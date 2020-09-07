package com.web.transfer.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.transfer.dto.NewMember;
import com.web.transfer.dto.NewMemberListDTO;


@Controller
public class FormDataController {

	@RequestMapping(value = "/formData")
	public String formExMain() {

		return "formData/formDataMain";
	}

	@RequestMapping(value = "/formData/insertMember1", method = RequestMethod.POST)
	public String formDataExParam(@RequestParam String name,
			@RequestParam String id,
			@RequestParam String passwd,
			@RequestParam String email,
			@RequestParam String birthday,
			@RequestParam(name="sex") String sex,
			Model model) {

		System.out.println("id : " + id + ", name : " + name + ", passwd : " + passwd + ", email : " + email
				+ ", birthday : " + birthday + ", sex : " + sex);

		if (id == null || id.equals("") || name == null || name.equals("") || passwd == null || passwd.equals("")
				|| email == null || email.equals("") || birthday == null || birthday.equals("") || sex == null
				|| sex.equals("")) {
			System.out.println("FormParam is Null");
			return "redirect:/formDataMain";
		}
		
		NewMember member = new NewMember();
		member.setId(Integer.parseInt(id));
		member.setName(name);
		member.setPasswd(passwd);
		member.setEmail(email);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			member.setBirthday(sdf.parse(birthday));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		member.setSex(sex);
		
		model.addAttribute("joindMember", member);
		model.addAttribute("title", "FormParamData Pro");
		
		return "formData/viewMember";
	}
	
	@RequestMapping(value = "/formData/insertMember2", method = RequestMethod.POST)
	public String formDataExFormClass(@ModelAttribute NewMember member,
			HttpServletRequest req, Model model) {
		
//		String [] likes = req.getParameterValues("like");
//		for (String var : likes) {
//			System.out.println(var);
//		}
		
		System.out.println(member.toString());
		//member.setLikes(likes);
		model.addAttribute("joindMember", member);
		
		model.addAttribute("title", "FormClass Pro");
	
		
		return "formData/viewMember";
	}
	
	
	@RequestMapping(value = "/formData/multiForm", method = RequestMethod.GET)
	public String formDataExMulti(Model model) {
		
		return "formData/multiForm";
	}
	
	
	@RequestMapping(value = "/formData/multiForm", method = RequestMethod.POST)
	public String formDataExMulti(@ModelAttribute NewMemberListDTO dto, Model model) {
		
		List<NewMember> tempList = dto.getList();
		for (NewMember member : tempList) {
			System.out.println(member.toString());
		}
		
		
		model.addAttribute("list",tempList);
		return "formData/multiFormRes";
	}
	
	
	

}
