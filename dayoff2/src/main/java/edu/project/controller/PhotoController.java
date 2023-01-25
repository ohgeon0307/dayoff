package edu.project.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.project.service.PhotoService;
import edu.project.vo.BoardVo;
import edu.project.vo.PhotoVo;



@RequestMapping(value = "/photo")
@Controller
public class PhotoController {
	
	@Autowired
	private PhotoService photoService;
	
	@RequestMapping(value = "/list.do" , method = RequestMethod.GET)
	public String list(Model model) {
		List<BoardVo> list = new ArrayList<BoardVo>();
		model.addAttribute("datalist",list);
		return "photo/photo_list";
	}
	
	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view(int pidx, Model model) {
		PhotoVo vo = photoService.selectByPidx(pidx);
		model.addAttribute("vo",vo);
		return "photo/photo_list";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String write() {
		
		return "photo/photo_write";
	}
	
}
