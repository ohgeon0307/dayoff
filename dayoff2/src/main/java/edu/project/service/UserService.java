package edu.project.service;

import java.util.List;

import edu.project.vo.UserVo;

public interface UserService {
	int validation(String id);
	
	int insertUser(UserVo vo);
	
	UserVo login(UserVo vo);
	
	List<UserVo> list();

}
