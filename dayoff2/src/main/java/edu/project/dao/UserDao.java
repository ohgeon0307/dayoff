package edu.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.project.vo.BoardVo;
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
	
	public UserVo login(UserVo vo) {
		return sqlSession.selectOne("edu.project.mapper.userMapper.login", vo);
	}
	
	public List<UserVo> list() {
		
		return sqlSession.selectList("edu.project.mapper.userMapper.list");
	}
	
	public UserVo selectByUidx(int uidx) {
		
		return sqlSession.selectOne("edu.project.mapper.boardMapper.selectByUidx",uidx);
	}
	
	
}
