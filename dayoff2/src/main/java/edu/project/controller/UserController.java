package edu.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.project.service.UserService;

@RequestMapping("/user")
@Controller
public class UserController {
	

	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String login() {
		
		
		return "user/login";
	}
	
	@RequestMapping(value="/join_form.do",method=RequestMethod.GET)
	public String join_form() {
		
		
		return "user/join_form";
	}

}
