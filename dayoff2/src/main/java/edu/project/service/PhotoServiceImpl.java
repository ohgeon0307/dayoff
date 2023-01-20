package edu.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.project.dao.PhotoDao;
import edu.project.vo.PhotoVo;

@Service
public class PhotoServiceImpl implements PhotoService{

	@Autowired
	private PhotoDao photoDAO;
	
	@Override
	public List<PhotoVo> list(PhotoVo photoVo) {
		List<PhotoVo> list = photoDAO.list(photoVo);
		return list;
	}

	@Override
	public PhotoVo selectByPidx(int pidx) {
		return photoDAO.selectByPidx(pidx);
	}

}
