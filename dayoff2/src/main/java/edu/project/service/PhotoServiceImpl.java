package edu.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.project.dao.PhotoDao;
import edu.project.vo.AttachImageVo;
import edu.project.vo.PhotoVo;
import edu.project.vo.SearchCriteria;

@Service
public class PhotoServiceImpl implements PhotoService{
	@Autowired
	private PhotoDao photoDAO;
	
	@Override
	public List<PhotoVo> list(SearchCriteria scri) {
		List<PhotoVo> list = photoDAO.list(scri);
		return list;
	}

	@Override
	public PhotoVo selectByPidx(int pidx) {
		return photoDAO.selectByPidx(pidx);
	}
	
	@Override
	public int insert(PhotoVo vo) {
		return photoDAO.insert(vo);
	}
	@Override
	public int imageEnroll(AttachImageVo vo) {
		return photoDAO.imageEnroll(vo);
	}
	@Override
	public AttachImageVo image(int pidx) {
		return photoDAO.image(pidx);
		
	}
	
	@Override
	public int modifyByPidx(PhotoVo vo) {
		return photoDAO.modifyByPidx(vo);
	}
	
	@Override
	public int modifyImgByPidx(AttachImageVo vo) {
		return photoDAO.modifyImgByPidx(vo);
	}
	
	@Override
	public int deleteImgByPidx(int pidx) {
		return photoDAO.deleteImgByPidx(pidx);
	}
	
	@Override
	public int deleteByPidx(int pidx) {
		return photoDAO.deleteByPidx(pidx);
	}
	
	@Override
	public int listCount(SearchCriteria scri) {
		return photoDAO.listCount(scri);
	}
	
	@Override
	public int updatereviewcnt(int pidx) {
		return photoDAO.updatereviewcnt(pidx);
	}
}
