package edu.study.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.study.service.BoardService;
import edu.study.vo.BoardVo;
import edu.study.vo.PageMaker;
import edu.study.vo.SearchCriteria;
import edu.study.vo.SearchVo;
import edu.study.vo.UserVo;

@RequestMapping(value = "/board")
//가상경로 찾는 어노테이션
@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/list.do")
	public String list(Model model, SearchCriteria scri) {

		List<BoardVo> list = boardService.list(scri);

		model.addAttribute("datalist", list);
		
		for(BoardVo item : list) {
			System.out.println(item.getBidx());
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setScri(scri);
		pageMaker.setTotalCount(boardService.listCount());
		model.addAttribute("pageMaker", pageMaker);
		
		
		
		return "board/L";
	}
	
	

	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view(int bidx, Model model) { // 어떤값을 매개변수로 쓸지 미리 생각을 해야함. 여기서는 bidx로 해당 컨텐츠를 불러오니 bidx가 필요하고, service, dao에도
									// 선언해줘야함.
		// DB 상세데이터 조회
		BoardVo vo = boardService.selectByBidx(bidx);
		
		model.addAttribute("vo", vo);

		return "board/V";
	}
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.GET)
	public String modify(int bidx, Model model) {
		
		
		BoardVo vo = boardService.updateByBidx(bidx);
		
		model.addAttribute("vo", vo);
		
		return "board/M";
	}
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.POST)
	public String modify(BoardVo vo, Model model) {
		
		int result = boardService.modifyByBidx(vo);
		
		if(result > 0) {
			
			return "redirect:view.do?bidx="+vo.getBidx();
		} else {
			
			return "redirect:/";
		}
		
	}
	
	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public String delete(int bidx, HttpSession session) {
		
		UserVo login = (UserVo)session.getAttribute("login");//오브젝트 방식으로 get해올때 set할때 썼던 키값으로 받아와야함.
		
		int uidx = login.getUidx(); //로그인 객체의 getter로 값을 꺼내와라.(삭제할때는 uidx만 필요하기때문에)
		
		int result = boardService.deleteByBidx(bidx);
		
		if(result > 0) {
			return "redirect:list.do";
		} else {
			return "redirect:/";
		}
		
	}
	

	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String write() {

		return "board/W";
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String w(BoardVo vo, HttpSession session) { // 메소드 오버로딩
//		if(title != null && !title.equals("")) {
//			
//		}
		
		UserVo login = (UserVo)session.getAttribute("login");
		
		int uidx = login.getUidx();
		
		vo.setUidx(uidx);
		
		int result = boardService.insertByUidx(vo);
		
		//int maxBidx = boardService.maxBidx();
		
		System.out.println(result);
		if(result > 0) {
			return "redirect:view.do?bidx="+vo.getBidx();
			
			//insert한 게시글의 pk 값을 가져와 view.do로 이동하세요.
		}
		// db작업(insert)
		return "redirect:list.do"; // forward 처리가 아닌 경로가 데이터를 가지고 다른 페이지를 가야할때 사용.(다시 컨트롤러를 통해서 요청경로를 처리하게됨),
		// *반드시 가상경로가 와야함
	}
	
	

}