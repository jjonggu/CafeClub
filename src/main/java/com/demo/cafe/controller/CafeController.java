package com.demo.cafe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cafe")
public class CafeController {

	/**
	 * @2024-03-27 
	 * Cafe 메인화면 View
	 */
	@GetMapping("/main")
	public String Main() {
		return "cafe/main";
	}	
}
