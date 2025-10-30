package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
	@RequestMapping("/")
	@ResponseBody
	public String root() {
		return "Hello world~!";
	}
	
	@RequestMapping("/hello")
	@ResponseBody
	public String hello() {
		String str = "<h2>학과 : 컴퓨터정보공학과 </h2>";
		str += "<h2>학번 : 202244106 </h2>";
		str	+= "<h2>이름 : 윤종현</h2>";
		return str;
	}
}
