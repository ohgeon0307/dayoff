package edu.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TogetherController {

	@RequestMapping(value = "/together_view.do", method = RequestMethod.GET)
	public String view() {
		 
		return "together/together_view";
	}
		
	@RequestMapping(value = "/together_write.do", method = RequestMethod.GET)
	public String write() {
		
		return "together/together_board_write";
	}
	
	
	
	
}
