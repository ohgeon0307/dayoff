package edu.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "home";
	}
	
	@RequestMapping(value = "/together", method = RequestMethod.GET)
	public String together() {
		
		return "together/together_home";
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	
	public String board() {
		
		return "board/board_list";
	}
	
	@RequestMapping(value = "/photo", method = RequestMethod.GET)
	
	public String photo() {
		
		return "photo/photo_list";
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
