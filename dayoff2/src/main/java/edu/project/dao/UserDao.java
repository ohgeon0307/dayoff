package edu.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int validation(String id) {
		
		return sqlSession.selectOne("edu.project.mapper.userMapper.validation",id);
	}
}
