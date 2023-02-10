package edu.project.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.project.service.KakaoService;

@RequestMapping("/kakao")
@Controller
public class KakaoController {
	
	
	
	@Autowired
	private KakaoService kakaoService;
	
	@RequestMapping(value="/kakao.do", method=RequestMethod.GET)
	public String kakao(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Exception {
		System.out.println("#########" + code);
		
		String access_Token = kakaoService.getAccessToken(code);
		HashMap<String, Object> userInfo = kakaoService.getUserInfo(access_Token);
		System.out.println("###access_Token### : " + access_Token);
		System.out.println("###nickname### :" + userInfo.get("nickname"));
		System.out.println("###email### :" + userInfo.get("email"));
		
		if(userInfo.get("email") != null) {
			session.setAttribute("userId", userInfo.get("email"));
			session.setAttribute("userNickName", userInfo.get("nickname"));
			session.setAttribute("access_Token", access_Token);
		}
		
		return "redirect:/community.do";
	}
	
	 @RequestMapping(value="/logout.do")
	    public String logout(HttpSession session) {
	        String access_Token = (String)session.getAttribute("access_Token");

	        if(access_Token != null && !"".equals(access_Token)){
	            kakaoService.kakaoLogout(access_Token);
	            session.removeAttribute("access_Token");
	            session.removeAttribute("userId");
	            System.out.println("카카오 로그아웃 기능 성공!");
	        }else{
	            System.out.println("access_Token is null");
	            //return "redirect:/";
	        }
	        //return "index";
	        return "redirect:/community.do";
	    }
	
	

	
	
}
