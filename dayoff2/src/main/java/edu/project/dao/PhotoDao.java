package edu.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import edu.project.vo.PhotoVo;

@Repository
public class PhotoDao {
	private SqlSession sqlSession;
	
	public List<PhotoVo> list(PhotoVo photoVo) {
		return sqlSession.selectList("edu.project.mapper.photoMapper.list", photoVo);
	}
	
}
