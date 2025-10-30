package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
	@RequestMapping("/")
	@ResponseBody
	public String root() {
		return "MVC 개념 익히기";
	}
	
	//클라이언트의 요청 형태에 따라 요청처리 메서드를 선언
	@RequestMapping("/test1")
	@ResponseBody
	public String test1() {
		return "test1 요청에 대한 응답입니다";
	}
	
	@RequestMapping("/test2")
	@ResponseBody
	public String test2() {
		return "test2 요청에 대한 응답입니다";
	}
}
