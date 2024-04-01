package com.demo.cafe.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.cafe.dto.UsrDto;
import com.demo.cafe.service.UsrService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
@RequestMapping("/cafe")
public class UsrController {
	
	private final UsrService usrService;
	
	/**
	 * @2024-03-27 
	 * 회원가입 View
	 */
	@GetMapping("/signin")
	public String CafeSignin() {
		return "cafe/signin";
	}
	
	/**
	 * @2024-04-01
	 * AJAX 요청 회원가입 
	 */
	@PostMapping(value = "/signinForm")
	@ResponseBody
	public Map<String, Object> signinForm(@RequestBody UsrDto usrDto, Model model) {
	    int usrList = usrService.insertSignin(usrDto);
	    model.addAttribute("usrList", usrList);
	    System.out.println(usrList);
	    return  Map.of("message", "회원가입에 성공 했습니다.");
	}
	
	/**
	 * @2024-03-27 
	 * 로그인 View
	 */
	@GetMapping("/login")
	public String CafeLogin() {
		return "cafe/login";
	}

}
