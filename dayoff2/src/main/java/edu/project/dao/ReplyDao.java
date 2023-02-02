package edu.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.project.vo.ReplyVo;

@Repository
public class ReplyDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<ReplyVo> replyList(int bidx) {
		
		return sqlSession.selectList("edu.project.mapper.boardMapper.replyList", bidx);
		
	}
	
	public int insertReply(ReplyVo vo) {
		
		return sqlSession.insert("edu.project.mapper.boardMapper.insertReply", vo);
	}
	
	public int updateReply(ReplyVo vo) {
		
		return sqlSession.update("edu.project.mapper.boardMapper.updateReply", vo);
	}
	
	public int deleteReply(int ridx) {
		
		return sqlSession.update("edu.project.mapper.boardMapper.deleteReply", ridx);
	}
}
