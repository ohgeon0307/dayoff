package edu.project.service;

import java.util.List;

import edu.project.vo.AttachImage2Vo;

import edu.project.vo.TogetherVo;


public interface TogetherService {
	
	int togetherInsert(TogetherVo vo);
	List<TogetherVo> list(TogetherVo togetherVo);
	
	TogetherVo selectByTidx(int Tidx);
	
	int updateByTidx(TogetherVo vo);
	
	int deleteByTidx(int tidx);
	
	int imageEnroll(AttachImage2Vo vo);
	
	AttachImage2Vo image(int tidx); 
}
