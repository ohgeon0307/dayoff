package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.UserDao;
import edu.study.vo.UserVo;

@Service 
public class UserServiceImpl implements UserService {

	@Autowired //타입을 기존으로 의존을 주입해주는 어노테이션
	private UserDao userDao;
	
	@Override
	public List<UserVo> list() {
	
		List<UserVo> list = userDao.list();
		return list;
	}

	@Override
	public UserVo selectByUidx(int uidx) {
		// TODO Auto-generated method stub
		return userDao.selectByUidx(uidx);
	}

	@Override
	public int modifyByUidx(UserVo vo) {
		// TODO Auto-generated method stub
		return userDao.modifyByUidx(vo);
	}
	
	@Override
	public UserVo login(UserVo vo) {
		
		return userDao.login(vo);
	}

	@Override
	public int insertUser(UserVo vo) {
		// TODO Auto-generated method stub
		return userDao.insertUser(vo);
	}

	@Override
	public int validation(String id) {
		// TODO Auto-generated method stub
		return userDao.validation(id);
	}
	
	
	

	
	
}
