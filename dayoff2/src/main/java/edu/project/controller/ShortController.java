package edu.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@RequestMapping(value = "/short")
@Controller
public class ShortController {

	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list() {
		
		return "short/short_list";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String write() {
		
		return "short/short_write";
	}
}
