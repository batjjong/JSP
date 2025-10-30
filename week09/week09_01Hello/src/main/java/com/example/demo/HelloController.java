package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller		//클라이언트의 요청을 처리하는 역할을 담당
public class HelloController {
	//필요한 객채를 선언(의존 객체)
	@Autowired
	private Hello hello;
	
	//클라이언트의 요청을 처리
	@RequestMapping("/") //루트(/)에 대한 요청이 들어오면
	@ResponseBody		 //응답 메시지를 html body 태그에 넣어서 전달
	public String root() {
		return hello.sayHello();
	}
}
