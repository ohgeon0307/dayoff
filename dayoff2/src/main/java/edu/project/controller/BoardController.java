package edu.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@RequestMapping(value = "/board")
@Controller
public class BoardController {
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String write() {
		
		return "board/board_write";
	}
	
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list() {
		
		return "board/board_list";
	}
	
	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view() {
		
		return "board/board_view";
	}
}
