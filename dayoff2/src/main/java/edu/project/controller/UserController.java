package edu.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.project.service.UserService;
import edu.project.vo.UserVo;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String login() {
		
		
		return "user/login";
	}
	
	@RequestMapping(value = "/login.do", method=RequestMethod.POST)
	public String login(UserVo vo, HttpSession session) {
		
		UserVo loginVo = userService.login(vo);
		System.out.println(loginVo);
		if(loginVo != null) {
			session.setAttribute("login", loginVo);
			return "redirect:/community.do";
		} else if (loginVo == null) {
			
			return "redirect:login.do";
		}
		return "";
	}
	
	@RequestMapping(value = "/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/community.do";
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
	
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join(UserVo vo) {
		
		int result = userService.insertUser(vo);
		
		if(result > 0) {
			return "redirect:/community.do";
		}
		return "redirect:/community.do";
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
