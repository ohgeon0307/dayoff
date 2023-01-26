package edu.project.service;

import java.util.List;

import edu.project.vo.TogetherVo;


public interface TogetherService {
	
	int insert(TogetherVo vo);
	List<TogetherVo> list();
	
	TogetherVo selectByTidx(int Tidx);
	
	int updateByTidx(TogetherVo vo);
	
	int deleteByTidx(int tidx);
}
