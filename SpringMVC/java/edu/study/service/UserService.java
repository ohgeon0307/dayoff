package edu.study.service;

import java.util.List;

import edu.study.vo.UserVo;


public interface UserService {
	List<UserVo> list();
	
	UserVo selectByUidx(int uidx);
	
	int modifyByUidx(UserVo vo);
	
	UserVo login(UserVo vo);

	int insertUser(UserVo vo);

	int validation(String id);
	
}
