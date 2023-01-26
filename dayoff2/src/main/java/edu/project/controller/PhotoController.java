package edu.project.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

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
	public String write(PhotoVo vo, HttpServletRequest req,MultipartFile pContent) throws IllegalStateException, IOException {
		
		String path= req.getSession().getServletContext().getRealPath("/resources/upload");
		
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		
		if(!pContent.getOriginalFilename().isEmpty()) { //isEmpty = 비워져있다.
			int pos = pContent.getOriginalFilename().lastIndexOf(".");
			String ext = pContent.getOriginalFilename().substring(pos+1);
			Date now = new Date();
			String today = new SimpleDateFormat("yyyyMMddHHmmSS").format(now);
			
			int random = (int) ((Math.random() * 100) + 1);
			String result = today + random;
			pContent.transferTo(new File(path,result+"."+ext));
		}
		
		return "";
	}
}
