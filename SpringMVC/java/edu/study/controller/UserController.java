package edu.study.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.study.service.UserService;
import edu.study.vo.UserVo;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/login.do", method=RequestMethod.GET)
	public String login() {
		
	
		
		return "user/Login";
		
		/*
		 로그인버튼 클릭 시 사용자가 입력한 아이디 패스워드 정보와 일치하는 usertb 데이터 controller까지 조회해 오기.
		 * */
	}
	
	
	@RequestMapping(value = "/login.do", method=RequestMethod.POST)
	public String login(UserVo vo, HttpSession session) {
	
	UserVo loginVo = userService.login(vo);
	
		if(loginVo != null) {
			session.setAttribute("login", loginVo);
			System.out.println(loginVo.toString());
			return "redirect:/";
		} else if (loginVo == null) {

			return "redirect:login.do";
		}
		return "";
	}
	
	@RequestMapping(value = "/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
		
	}
	
	@RequestMapping(value = "/join.do", method=RequestMethod.GET)
	public String join() {
		
		return "user/Join";
	}
	
	@RequestMapping(value = "/join.do", method=RequestMethod.POST)
	public String join(UserVo vo) {
		
		int result = userService.insertUser(vo);
		
		if(result > 0) {
			return "redirect:/";
		}
		return "redirect:/";
		
	}
	
	
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(Model model) {
		//필드 이름을 이용해서 호출.
		
		List<UserVo> list = userService.list();
		
		model.addAttribute("userlist",list);
		
		return "user/uList";
	}
	
	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view(int uidx, Model model) {
		
		UserVo vo = userService.selectByUidx(uidx);
		
		model.addAttribute("vo",vo);
		
		return "user/uView";
	}
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.GET)
	public String modify(int uidx, Model model) {
		
		UserVo vo = userService.selectByUidx(uidx);
		
		model.addAttribute("vo",vo);
		
		return "user/uModify";
	}
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.POST)
	public String modify(UserVo vo) { //mybatis는 한개의 데이터밖에못받는다함..슬프네..
		
		int result = userService.modifyByUidx(vo);
		if(result > 0) {
			return "redirect:view.do?uidx="+vo.getUidx();
		} else {
			return "redirect:/";
		}
	}
	
//	@RequestMapping(value = "/validation.do", method = RequestMethod.GET)
//	public String validation() {
//	
//		return "user/join";
//	}

	@ResponseBody
	@RequestMapping(value = "/validation.do", method = RequestMethod.POST)
	public String validation(String id) {
		
		
		int result = userService.validation(id);
		System.out.println(result);
		
		if(result > 0) {
			return "1";
		} else {
			return "0";
		}
	}
}
