package edu.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import edu.project.dao.UserDao;
import edu.project.vo.UserVo;


@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public int validation(String id) {
		// TODO Auto-generated method stub
		return userDao.validation(id);
	}

	@Override
	public int insertUser(UserVo vo) {
		// TODO Auto-generated method stub
		return userDao.insertUser(vo);
	}

	@Override
	public UserVo login(UserVo vo) {
		// TODO Auto-generated method stub
		return userDao.login(vo);
	}

	@Override
	public List<UserVo> list() {
		// TODO Auto-generated method stub
		List<UserVo> ulist = userDao.list();
		return ulist;
	}

}
