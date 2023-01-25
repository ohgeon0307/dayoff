package edu.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.project.dao.BoardDao;
import edu.project.service.BoardService;
import edu.project.vo.BoardVo;


@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao boardDao;
	
	@Override
	public int boardInsert(BoardVo vo) {
		// TODO Auto-generated method stub
		return boardDao.boardInsert(vo);
	}

	@Override
	public List<BoardVo> boardList(BoardVo vo) {
		// TODO Auto-generated method stub
		List<BoardVo> list = boardDao.boardList(vo);
		System.out.println(list);
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

}
