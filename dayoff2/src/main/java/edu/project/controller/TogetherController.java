package edu.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.project.service.TogetherService;
import edu.project.vo.TogetherVo;


@Controller
public class TogetherController {
	
	@Autowired
	private TogetherService togetherService;
	
	

	@RequestMapping(value = "/together_view.do", method = RequestMethod.GET)
	public String view(int tidx, Model model ) {
		 
		TogetherVo vo = togetherService.selectByTidx(tidx);
		
		model.addAttribute("vo",vo);
		
		return "together/together_view";
	}
		
	@RequestMapping(value = "/together_write.do", method = RequestMethod.GET)
	public String write() {
		
		return "together/together_board_write";
	}
	
	@RequestMapping(value= "/write.do", method = RequestMethod.POST)
	public String write(TogetherVo vo, HttpSession session) {
		
		int result = togetherService.insert(vo); 
		
		
		
		return "redirect:together";
	}
	
	
	
}
