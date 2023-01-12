package edu.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value = "/test")

@Controller
public class testController {
	public String test() {
		System.out.println("hi");
		return "";
		//qasdfasfd
	}
		
}
