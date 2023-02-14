package edu.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.project.vo.AttachImage2Vo;
import edu.project.vo.AttachImageVo;
import edu.project.vo.PhotoVo;
import edu.project.vo.TogetherVo;




@Repository
public class TogetherDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<TogetherVo> togetherlist(TogetherVo vo){

		return sqlSession.selectList("edu.project.mapper.togetherMapper.togetherlist");
	}
	
	public int togetherInsert(TogetherVo vo) {
			
			
			return sqlSession.insert("edu.project.mapper.togetherMapper.togetherInsert", vo);
		}	
	
	public int imageEnroll(AttachImage2Vo vo) {
		return sqlSession.insert("edu.project.mapper.togetherMapper.imageEnroll", vo);
	}
	
	public AttachImage2Vo image(int tidx) {
		return sqlSession.selectOne("edu.project.mapper.togetherMapper.image", tidx);
	}
	
	
	public TogetherVo selectByTidx(int tidx) {
		
		
		return sqlSession.selectOne("edu.project.mapper.togetherMapper.selectByTidx", tidx);
	}
	
	public int updateByTidx(TogetherVo vo) {
		
		
		return sqlSession.update("edu.project.mapper.togetherMapper.updateByTidx", vo);
	}
	
	public int deleteByTidx(int tidx) {
		
		
		return sqlSession.delete("edu.project.mapper.togetherMapper.deleteByTidx", tidx);
	}
	
	
}
