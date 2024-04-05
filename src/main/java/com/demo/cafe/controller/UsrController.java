package com.demo.cafe.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	 * @2024-04-01
	 * 회원가입 View
	 */
	@GetMapping("/signin")
	public String CafeSignin() {
		return "cafe/signin";
	}
	
	/**
	 * @2024-04-01
	 * AJAX 사용자 등록
	 */
	@PostMapping(value="/signinForm")
	@ResponseBody
	public Map<String, Object> signinForm(@RequestBody UsrDto usrDto, Model model) {
	    int signinUsrList = usrService.insertSignin(usrDto);
	    model.addAttribute("signinUsrList", signinUsrList);
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
	
	/**
	 * @2024-04-03
	 * AJAX 사용자 조회
	 */
	@GetMapping("/usr-list")
	public String UsrList(Model model) {
		List<UsrDto> usrList = usrService.getSelectUsrList();
		model.addAttribute("usrList", usrList);
		return "cafe/usr-list";
	}
	
	/**
	 * @2024-04-05
	 * 사용자 상세 조회
	 */
	@GetMapping("/usr-detail")
	@ResponseBody
	public Map<String, Object> UsrDetail(@RequestParam String usrEmail, Model model) {
		UsrDto usrDto = usrService.getSelectUsrDetail(usrEmail);
		model.addAttribute("usrDto", usrDto);
		System.out.println("!!!!!!!!!!!!!!!" + usrDto);
		return Map.of("message", "성공 하였습니다.");
	}
}
