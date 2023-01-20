package edu.project.dao;

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
}
