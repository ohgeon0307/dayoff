package edu.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.project.dao.TogetherDao;
import edu.project.vo.TogetherVo;



@Service
public class TogetherServiceImpl implements TogetherService{

	@Autowired
	private TogetherDao togetherDAO;
	
	@Override
	public int insert(TogetherVo vo) {
		
		return togetherDAO.insert(vo);
	}

	@Override
	public List<TogetherVo> list() {
		
		List<TogetherVo> list = togetherDAO.list();
		
		return list;
	}

}
