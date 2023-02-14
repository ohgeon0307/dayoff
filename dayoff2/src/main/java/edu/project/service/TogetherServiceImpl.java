package edu.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.project.dao.TogetherDao;
import edu.project.vo.AttachImage2Vo;
import edu.project.vo.AttachImageVo;
import edu.project.vo.TogetherVo;



@Service
public class TogetherServiceImpl implements TogetherService{

	@Autowired
	private TogetherDao togetherDAO;
	
	@Override
	public int togetherInsert(TogetherVo vo) {
		
		return togetherDAO.togetherInsert(vo);
	}

	@Override
	public List<TogetherVo> togetherlist(TogetherVo togetherVo) {
		
		List<TogetherVo> list = togetherDAO.togetherlist(togetherVo);
		
		return list;
	}

	@Override
	public TogetherVo selectByTidx(int tidx) {
		
		
		return togetherDAO.selectByTidx(tidx);
	}

	@Override
	public int updateByTidx(TogetherVo vo) {
		
		return togetherDAO.updateByTidx(vo);
	}

	@Override
	public int deleteByTidx(int tidx) {
	
		return togetherDAO.deleteByTidx(tidx);
	}
	
	@Override
	public int imageEnroll(AttachImage2Vo vo) {
		return togetherDAO.imageEnroll(vo);
	}
	@Override
	public AttachImage2Vo image(int tidx) {
		return togetherDAO.image(tidx);
	}
}
