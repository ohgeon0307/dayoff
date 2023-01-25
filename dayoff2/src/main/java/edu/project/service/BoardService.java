package edu.project.service;

import java.util.List;

import edu.project.vo.BoardVo;

public interface BoardService {
	
	
	int boardInsert(BoardVo vo);
	
	List<BoardVo> boardList(BoardVo vo);
	
	BoardVo selectByBidx(int bidx);
	
	BoardVo updateByBidx(int bidx);
	
	int modifyByBidx(BoardVo vo);
	
	int deleteByBidx(int bidx);
}
