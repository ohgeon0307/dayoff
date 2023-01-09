package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.UserVo;

@Repository // 외부 데이터(DB)를 접근해서 불러오기 위한 어노테이션
public class UserDao {

		@Autowired // 자동 의존 주입
		private SqlSession sqlSession;
		
		public List<UserVo> list() {
			
			return sqlSession.selectList("edu.study.mapper.userMapper.list");
		}
		
		public UserVo selectByUidx(int uidx) {
			
			return sqlSession.selectOne("edu.study.mapper.userMapper.selectByUidx",uidx);
		}
		
		public int modifyByUidx(UserVo vo) {
			
			return sqlSession.update("edu.study.mapper.userMapper.modifyByUidx",vo);
		}
		
		public UserVo login(UserVo vo) {
			return sqlSession.selectOne("edu.study.mapper.userMapper.login", vo);
		}
		
		public int insertUser(UserVo vo) {
			
			return sqlSession.insert("edu.study.mapper.userMapper.insertUser",vo);
		}
		
		public int validation(String id) {
			
			return sqlSession.selectOne("edu.study.mapper.userMapper.validation", id);
		}
}
