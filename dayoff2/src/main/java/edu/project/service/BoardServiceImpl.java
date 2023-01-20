package edu.project.service;

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

}
