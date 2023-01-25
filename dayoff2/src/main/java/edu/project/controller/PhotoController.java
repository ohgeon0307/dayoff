package edu.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.project.service.PhotoService;
import edu.project.vo.PhotoVo;


@RequestMapping(value = "/photo")
@Controller
public class PhotoController {
	
	@Autowired
	private PhotoService photoService;
	
	@RequestMapping(value = "/list.do")
	public String list(Model model, PhotoVo vo) {
		List<PhotoVo> list = photoService.list(vo);
		model.addAttribute("datalist",list);
		return "photo/photo_list";
	}
	
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String write() {
		
		return "photo/photo_write";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String write(PhotoVo vo) {
		
		int result = photoService.insert(vo);
		
		return "redirect:/list.do";
	}
}
