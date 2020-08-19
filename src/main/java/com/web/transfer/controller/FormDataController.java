package com.web.transfer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormDataController {
	
	@RequestMapping(value="/formData")
	public String paramExMain() {
		
		return "formData/formDataMain";
	}
}
