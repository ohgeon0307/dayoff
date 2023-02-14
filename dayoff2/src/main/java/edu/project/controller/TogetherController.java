package edu.project.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import edu.project.service.TogetherService;
import edu.project.service.UserService;
import edu.project.vo.AttachImage2Vo;
import edu.project.vo.TogetherVo;
import edu.project.vo.UserVo;





@Controller
public class TogetherController {
	
	@Autowired
	private TogetherService togetherService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/together.do")
	public String togetherlist(Model model, TogetherVo vo2, AttachImage2Vo vo, ArrayList<AttachImage2Vo> list) {
		
		List<TogetherVo> list2 = togetherService.togetherlist(vo2);
		
		System.out.println("!@#$!@#$" + list2);
		
		List<UserVo> userlist = userService.list();
		
		System.out.println("%%%@@@$#@$" + userlist);
		
		model.addAttribute("togetherlist", list2);
		
		model.addAttribute("userlist", userlist);
		
		for( TogetherVo item : list2 )
		{
			int tidx = item.getTidx();
			System.out.println(tidx);
			vo = togetherService.image(tidx);
			list.add(vo);
		}
		
		for ( AttachImage2Vo itm : list )
		{
			System.out.println(itm.toString());
		}
		
		model.addAttribute("image",list);
		
		
		
		return "together/together_home";
	}
	
	

	@RequestMapping(value = "/together_view.do", method = RequestMethod.GET)
	public String view(int tidx, Model model, HttpSession session) {
		 
		TogetherVo togethervo = togetherService.selectByTidx(tidx);
		model.addAttribute("togethervo", togethervo); 
		
		 
		
		
		return "together/together_view";
	}
		
	@RequestMapping(value = "/together_write.do", method = RequestMethod.GET)
	public String write() {
		
		return "together/together_board_write";
	}
	
	@RequestMapping(value= "/write.do", method = RequestMethod.POST)
	public String write(TogetherVo vo, HttpSession session, AttachImage2Vo vo2, MultipartFile uploadFile) {
		
		String uploadFolder = "\\\\DESKTOP-3RHRVJD\\upload";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		String datePath = str.replace("-", File.separator);
		
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		/* 파일 이름 */
		String uploadFileName = uploadFile.getOriginalFilename();			
		vo2.setFileName(uploadFileName);
		vo2.setUploadPath(datePath);
		
		/* uuid 적용 파일 이름 */
		String uuid = UUID.randomUUID().toString();
		vo2.setUuid(uuid);
		
		uploadFileName = uuid + "_" + uploadFileName;
		
		/* 파일 위치, 파일 이름을 합친 File 객체 */
		File saveFile = new File(uploadPath, uploadFileName);
		
		/* 파일 저장 */
		try {
			uploadFile.transferTo(saveFile);		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		System.out.println(vo.toString());
		togetherService.togetherInsert(vo);
		System.out.println("pidx : " + vo.getTidx());

		vo.setTidx(vo.getTidx());
		System.out.println(vo2.toString());
		togetherService.imageEnroll(vo2);
		
		return "redirect:together";
	}
	
	
	@RequestMapping(value = "/together_modify.do", method = RequestMethod.GET)
	public String modify(int tidx, Model model) {
		
		TogetherVo vo = togetherService.selectByTidx(tidx);
		
		
		model.addAttribute("vo",vo);
		
		return "together/together_modify";
	}
	
	@RequestMapping(value="/modify.do", method=RequestMethod.POST)
	public String modify(TogetherVo vo) {
		
		int result = togetherService.updateByTidx(vo);
		
		System.out.println(result +"< -- result값 ");
		
		if(result > 0) {
			
			return "redirect:together_view.do?tidx="+vo.getTidx();
		} else {
			return "redirect:/";
		}
		
		
	}
	
	
	@RequestMapping(value="/delete.do", method=RequestMethod.POST)
	public String delete(int tidx, HttpSession session) {
		
		
		
		
		
		int result = togetherService.deleteByTidx(tidx);
		
		if(result>0) {
			return "redirect:together";
		}else {
			return "redirect:/";
		}
		
		
	}
	
	
}
