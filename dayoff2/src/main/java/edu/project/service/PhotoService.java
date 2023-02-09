package edu.project.service;
import java.util.List;
import edu.project.vo.AttachImageVo;
import edu.project.vo.PhotoVo;

public interface PhotoService {
	
	List<PhotoVo> list(PhotoVo photoVo);
	PhotoVo selectByPidx(int pidx);
	int updateByPidx(PhotoVo vo);
	int deleteByPidx(int pidx);
	int insert(PhotoVo vo);
	int imageEnroll(AttachImageVo vo);
	List<AttachImageVo> imageList(AttachImageVo attachImageVo); 
}