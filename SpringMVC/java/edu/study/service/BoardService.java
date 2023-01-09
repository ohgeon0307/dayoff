package edu.study.service;

import java.util.List;

import edu.study.vo.BoardVo;
import edu.study.vo.Criteria;
import edu.study.vo.SearchCriteria;
import edu.study.vo.SearchVo;

public interface BoardService {
	
	List<BoardVo> list(SearchCriteria scri);
	
	BoardVo selectByBidx(int bidx);
	
	BoardVo updateByBidx(int bidx);
	
	int modifyByBidx(BoardVo vo);
	
	int deleteByBidx(int bidx);

	int insertByUidx(BoardVo vo);
	
	int maxBidx();
	
	List<BoardVo> listPage(SearchCriteria scri);
	
	int listCount();

}
