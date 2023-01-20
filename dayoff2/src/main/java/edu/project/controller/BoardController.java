package edu.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.project.service.BoardService;
import edu.project.vo.BoardVo;


@RequestMapping(value = "/board")
@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET)
	public String write() {
		
		return "board/board_write";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST)
	public String write(BoardVo vo) {
		int result = boardService.boardInsert(vo);
		
		System.out.println(result);
		if(result > 0) {
			return "redirect:view.do?bidx="+vo.getBidx();
		}
		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/list.do")
	public String list(Model model, BoardVo vo) {
		
		//	List<BoardVo> list = boardService.boardList(vo);
		
//		model.addAttribute("datalist", list);
		
		
		return "board/board_list";
	}
	
	
	
	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view() {
		
		return "board/board_view";
	}
}
