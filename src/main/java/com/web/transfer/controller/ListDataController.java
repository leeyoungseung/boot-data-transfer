package com.web.transfer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListDataController {
	
	@RequestMapping(value="/listData")
	public String paramExMain() {
		
		return "listData/listDataMain";
	}
}
