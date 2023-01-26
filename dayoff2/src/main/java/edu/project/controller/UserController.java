package edu.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.project.service.UserService;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String login() {
		
		
		return "user/login";
	}
	
	@RequestMapping(value="/login_action.do", method=RequestMethod.GET)
	public String loginAction() {
		
		return "user/login_action";
	}
	
	@RequestMapping(value="/join_form.do",method=RequestMethod.GET)
	public String join_form() {
		
		
		return "user/join_form";
	}
	
	@RequestMapping(value="/join.do",method=RequestMethod.GET)
	public String join() {
		
		return "user/join";
	}

	@ResponseBody
	@RequestMapping(value = "/validation.do", method = RequestMethod.POST)
	public String validation(String id) {
		
		int result = userService.validation(id);
		System.out.println(result);
		
		if(result > 0) {
			return "1";
		} else {
			return "0";
		}
	}

}
