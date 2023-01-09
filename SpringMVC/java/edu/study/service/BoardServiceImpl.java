package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.BoardDao;
import edu.study.vo.BoardVo;
import edu.study.vo.Criteria;
import edu.study.vo.SearchCriteria;
import edu.study.vo.SearchVo;

@Service //컴포넌트 하위에 존재하는 어노테이션, ioc 컨테이너가 Service 어노테이션을 읽어들였을때, 객체를 가지고 있다.
// ioc에게 구현객체라는걸 알려주기 위해서 @Service 어노테이션을 쓴다.
public class BoardServiceImpl implements BoardService {

	@Autowired //타입을 기준으로 의존을 주입해주는 어노테이션
	private BoardDao boardDao;
	
	@Override
	public List<BoardVo> list(SearchCriteria scri) {
		// TODO Auto-generated method stub
		List<BoardVo> list = boardDao.list(scri);
		return list;
	}

	@Override
	public BoardVo selectByBidx(int bidx) {
		// TODO Auto-generated method stub
		
		
		return boardDao.selectByBidx(bidx);
	}

	@Override
	public BoardVo updateByBidx(int bidx) {
		// TODO Auto-generated method stub
		return boardDao.updateByBidx(bidx);
	}

	@Override
	public int modifyByBidx(BoardVo vo) {
		// TODO Auto-generated method stub
		return boardDao.modifyByBidx(vo);
	}

	@Override
	public int deleteByBidx(int bidx) {
		// TODO Auto-generated method stub
		boardDao.deleteFromReply(bidx);
		return boardDao.deleteByBidx(bidx);
	}

	@Override
	public int insertByUidx(BoardVo vo) {
		// TODO Auto-generated method stub
		return boardDao.insertByUidx(vo);
	}

	@Override
	public int maxBidx() {
		// TODO Auto-generated method stub
		return boardDao.maxBidx();
	}

	@Override
	public List<BoardVo> listPage(SearchCriteria scri) {
		// TODO Auto-generated method stub
		return boardDao.listPage(scri);
	}

	@Override
	public int listCount() {
		// TODO Auto-generated method stub
		return boardDao.listCount();
	}

}
