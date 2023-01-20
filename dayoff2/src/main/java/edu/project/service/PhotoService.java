package edu.project.service;

import java.util.List;

import edu.project.vo.PhotoVo;



public interface PhotoService {
	
	List<PhotoVo> list(PhotoVo photoVo);
}
