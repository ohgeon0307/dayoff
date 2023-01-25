package edu.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.project.vo.BoardVo;

@Repository
public class BoardDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public int boardInsert(BoardVo vo) {
		
		return sqlSession.insert("edu.project.mapper.boardMapper.boardInsert",vo);
	}
	
	public List<BoardVo> boardList(BoardVo vo) {
		
		return sqlSession.selectList("edu.project.mapper.boardMapper.boardList",vo);
		
	}
	
	public BoardVo selectByBidx(int bidx) {
		
		return sqlSession.selectOne("edu.project.mapper.boardMapper.selectByBidx",bidx);
	}
	
	public BoardVo updateByBidx(int bidx) {
		
		return sqlSession.selectOne("edu.project.mapper.boardMapper.updateByBidx", bidx);
	}
	
	public int modifyByBidx(BoardVo vo) {
		
		return sqlSession.update("edu.project.mapper.boardMapper.modifyByBidx", vo);
	}
}
