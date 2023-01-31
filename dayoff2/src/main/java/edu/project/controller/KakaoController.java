package edu.project.controller;

import java.util.HashMap;

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
	public String kakao(@RequestParam(value = "code", required = false) String code) throws Exception {
		System.out.println("#########" + code);
		
		String access_Token = kakaoService.getAccessToken(code);
		HashMap<String, Object> userInfo = kakaoService.getUserInfo(access_Token);
		System.out.println("###access_Token### : " + access_Token);
		System.out.println("###nickname### :" + userInfo.get("nickname"));
		System.out.println("###email### :" + userInfo.get("email"));
		
		return "redirect:/";
	}
	
	
}
