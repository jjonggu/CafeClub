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
	public String CafeMain() {
		return "cafe/main";
	}

	/**
	 * @2024-03-27 
	 * Cafe 로그인 View
	 */
	@GetMapping("/login")
	public String CafeLogin() {
		return "cafe/login";
	}
	
	/**
	 * @2024-03-27 
	 * Cafe 회원가입 View
	 */
	@GetMapping("/signin")
	public String CafeSignin() {
		return "cafe/signin";
	}
	
	/**
	 * @2024-03-27 
	 * Cafe 메뉴 View
	 */
	@GetMapping("/menu")
	public String CafeMenu() {
		return "cafe/menu";
	}
	
}
