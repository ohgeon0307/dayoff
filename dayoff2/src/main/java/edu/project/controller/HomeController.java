package edu.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.project.service.TogetherService;
import edu.project.service.UserService;
import edu.project.vo.TogetherVo;
import edu.project.vo.UserVo;




/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private TogetherService togetherService;
	
	@Autowired
	private UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "index";
	}
	
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String community() {
		
		return "home";
	}
	
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	
	public String board() {
		
		return "board/board_list";
	}
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	
	public String myPage() {
		
		return "mypage_account";
	}
	

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	
	public String login() {
		
		return "user/login";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	
	public String join() {
		
		return "user/join";
	}
	
}
