package edu.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.project.service.BoardService;
import edu.project.vo.BoardVo;
import edu.project.vo.PageMaker;
import edu.project.vo.SearchCriteria;


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
			return "redirect:list.do";
		}
		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/list.do")
	public String list(Model model, SearchCriteria scri) {
		
		List<BoardVo> list = boardService.boardList(scri);
		
		System.out.println("list는:"+ list);
		
		model.addAttribute("datalist", list);
		
		for(BoardVo item : list) {
			System.out.println(item.getBidx());
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setScri(scri);
//		pageMaker.setTotalCount(boardService.listCount());
		model.addAttribute("pageMaker", pageMaker);
		
		return "board/board_list";
	}
	
	
	
	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view(int bidx, Model model) {
		
		BoardVo vo = boardService.selectByBidx(bidx);
		
		model.addAttribute("vo", vo);
		
		return "board/board_view";
	}
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.GET)
	public String modify(int bidx, Model model) {
		
		BoardVo vo = boardService.updateByBidx(bidx);
		
		model.addAttribute("vo", vo);
		
		return "board/board_modify";
	}
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.POST)
	public String modify(BoardVo vo) {
		
		int result = boardService.modifyByBidx(vo);
		System.out.println(result +"< -- result값 ");
		
		if(result > 0) {
			
			return "redirect:view.do?bidx="+vo.getBidx();
		} else {
			return "redirect:/";
		}
	}
	
	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public String delete(int bidx) {
		
		int result = boardService.deleteByBidx(bidx);
		
		if(result > 0) {
			return "redirect:list.do";
		} else {
			return "redirect:/";
		}
	}
}
