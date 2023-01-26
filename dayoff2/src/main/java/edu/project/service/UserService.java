package edu.project.service;

import edu.project.vo.UserVo;

public interface UserService {
	int validation(String id);
	
	int insertUser(UserVo vo);
}
