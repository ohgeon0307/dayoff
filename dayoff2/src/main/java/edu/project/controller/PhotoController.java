package edu.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@RequestMapping(value = "/photo")
@Controller
public class PhotoController {
	
	
	@RequestMapping(value = "/plist.do", method = RequestMethod.GET)
	public String plist() {
		
		return "photo/photo_list";
	}
	
	@RequestMapping(value = "/pwrite.do", method = RequestMethod.GET)
	public String pwrite() {
		
		return "photo/photo_write";
	}
	
	@RequestMapping(value = "/slist.do", method = RequestMethod.GET)
	public String slist() {
		
		return "photo/short_list";
	}
	
	@RequestMapping(value = "/swrite.do", method = RequestMethod.GET)
	public String swrite() {
		
		return "photo/short_write";
	}
}
