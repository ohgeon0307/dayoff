package edu.study.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.study.service.BoardService;
import edu.study.vo.BoardVo;
import edu.study.vo.SearchCriteria;
import edu.study.vo.SearchVo;

@RequestMapping(value = "/ajax")
@Controller
public class AjaxController {

	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String main() {
		return "ajax/main";
	}

	@ResponseBody // 중요 : 응답 데이터를 ViewResolver에게 주는게 아닌, 요청에 대한 응답 데이터로 만들어서 넘겨라 라는 어노테이션(화면에
					// 뿌려준다)
	@RequestMapping(value = "/callString.do", method = RequestMethod.GET)
	public String callStr() {

		return "ajax test data!!";
	}

	@ResponseBody /* 필 수 */
	@RequestMapping(value = "/plusString.do", method = RequestMethod.GET)
	public String plusStr(String test1, String test2) {

		return test1 + "_" + test2 + "_+ajax!!";
	}

	@ResponseBody /* 필 수 */
	@RequestMapping(value = "/findBidx.do", method = RequestMethod.GET)
	public BoardVo findBidx(int bidx) { // 게시글의 전체 정보를 가져와야하기때문에 BoardVo 형태로 리턴한다.

		BoardVo vo = boardService.selectByBidx(bidx);

		return vo;
	}

	@ResponseBody /* 필 수 */
	@RequestMapping(value = "/ajaxSearchBoard.do", method = RequestMethod.GET)
	public List<BoardVo> ajaxSearchBoard(SearchCriteria scri) { // 게시글 리스트 출력을 해야하기 때문에 List<BoardVo> 형태로 가져온다.

		return boardService.list(scri);
	}

	
	
}
