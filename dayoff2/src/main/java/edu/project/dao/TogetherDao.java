package edu.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.project.vo.TogetherVo;



@Repository
public class TogetherDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<TogetherVo> list(){
		
		
	
		
		return sqlSession.selectList("edu.project.mapper.togetherMapper.togetherlist");
	}
	
	public int insert(TogetherVo vo) {
			
			
			return sqlSession.insert("edu.project.mapper.togetherMapper.togetherInsert", vo);
		}	
	
	
	public TogetherVo selectByTidx(int tidx) {
		
		
		return sqlSession.selectOne("edu.project.mapper.togetherMapper.selectByTidx", tidx);
	}
	
	
}
