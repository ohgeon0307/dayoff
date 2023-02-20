package edu.project.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import edu.project.service.TogetherService;
import edu.project.service.UserService;
import edu.project.vo.TogetherVo;
import edu.project.vo.UserVo;
@Controller
public class TogetherController {
	
	@Autowired
	private TogetherService togetherService;
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value = "/together_view.do", method = RequestMethod.GET)
	public String view(int tidx, Model model, HttpSession session) {
		
		TogetherVo togethervo = togetherService.selectByTidx(tidx);
		
		togetherService.updatereviewcnt(tidx);
		
		model.addAttribute("togethervo", togethervo);
		
		
		
		
		return "together/together_view";
	}
		
	@RequestMapping(value = "/together_write.do", method = RequestMethod.GET)
	public String write() {
		
		return "together/together_board_write";
	}
	
	@RequestMapping(value= "/write.do", method = RequestMethod.POST)
	public String write(TogetherVo vo, HttpSession session) {
		
		int result = togetherService.insert(vo);
		
		System.out.println(vo.toString());
		
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