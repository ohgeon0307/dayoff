package edu.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.project.vo.PhotoVo;

@Repository
public class PhotoDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<PhotoVo> list(PhotoVo vo) {
		return sqlSession.selectList("edu.project.mapper.photoMapper.list", vo);
	}
	
	public PhotoVo selectByPidx(int pidx) {
		return sqlSession.selectOne("edu.project.mapper.photoMapper.selectByPidx", pidx);
	}
}
