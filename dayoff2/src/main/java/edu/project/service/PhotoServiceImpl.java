package edu.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.project.dao.PhotoDao;
import edu.project.vo.AttachImageVo;
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
	
	@Override
	public PhotoVo updateByPidx(int pidx) {
		return photoDAO.updateByPidx(pidx);
	}
	
	@Override
	public int deleteByPidx(int pidx) {
		return photoDAO.deleteByPidx(pidx);
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
	public AttachImageVo imageList(int pidx) {
		return photoDAO.imageList(pidx);
		
	}
	@Override
	public int modifyByPidx(PhotoVo vo) {
		// TODO Auto-generated method stub
		return photoDAO.modifyByBidx(vo);
	}
}
