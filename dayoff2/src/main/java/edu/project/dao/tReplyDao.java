package edu.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.project.vo.ReplyVo;
import edu.project.vo.tReplyVo;

@Repository
public class tReplyDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<tReplyVo> treplyList(int tidx) {
		
		return sqlSession.selectList("edu.project.mapper.togetherMapper.treplyList", tidx);
		
	}
	
	public int tinsertReply(tReplyVo vo) {
		
		return sqlSession.insert("edu.project.mapper.togetherMapper.tinsertReply", vo);
	}
	
	public int tupdateReply(tReplyVo vo) {
		
		return sqlSession.update("edu.project.mapper.togetherMapper.tupdateReply", vo);
	}
	
	public int tdeleteReply(int tridx) {
		
		return sqlSession.update("edu.project.mapper.togetherMapper.tdeleteReply", tridx);
	}
}
