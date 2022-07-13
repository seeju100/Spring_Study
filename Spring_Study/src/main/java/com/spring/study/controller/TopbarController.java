package com.spring.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TopbarController {
	//메인페이지이동
	@RequestMapping(value="main2", method= RequestMethod.GET)
	public String main() {
		
		return "main";
	}
	//Company회사 소개 페이지 이동
	@RequestMapping(value="welcome", method= RequestMethod.GET)
	public String welcome() {
		
		return "company/welcome";
	}
	//게시판 이동
	@RequestMapping(value="notice", method= RequestMethod.GET)
	public String notice() {
		
		return "center/notice";
	}
	//메일Form 이동
	@RequestMapping(value="mailForm", method= RequestMethod.GET)
	public String mailForm() {
		
		return "mail/mailForm";
	}
	
}
