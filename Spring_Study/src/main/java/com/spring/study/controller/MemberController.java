package com.spring.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	//회원가입  이동
	@RequestMapping(value="join", method= RequestMethod.GET)
	public String join() {
		
		return "member/join";
	}
	
}
