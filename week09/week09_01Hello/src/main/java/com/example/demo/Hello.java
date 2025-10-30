package com.example.demo;

import org.springframework.stereotype.Component;

@Component	//스프링 컨테이너에 자바빈(bean)객체로 등록
public class Hello {
	public String sayHello() {
		return "안녕, 스프링부트~!";
	}
}
