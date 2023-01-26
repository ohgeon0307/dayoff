package edu.project.service;

import java.util.List;

import edu.project.vo.BoardVo;
import edu.project.vo.SearchCriteria;

public interface BoardService {
	
	
	int boardInsert(BoardVo vo);
	
	List<BoardVo> boardList(SearchCriteria scri);
	
	BoardVo selectByBidx(int bidx);
	
	BoardVo updateByBidx(int bidx);
	
	int modifyByBidx(BoardVo vo);
	
	int deleteByBidx(int bidx);
	
	int listCount();
}
