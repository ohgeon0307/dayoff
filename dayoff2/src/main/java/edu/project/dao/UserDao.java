package edu.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.project.vo.UserVo;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int validation(String id) {
		
		return sqlSession.selectOne("edu.project.mapper.userMapper.validation",id);
	}
	
	public int insertUser(UserVo vo) {
		
		return sqlSession.insert("edu.project.mapper.userMapper.insertUser", vo);
	}
}
