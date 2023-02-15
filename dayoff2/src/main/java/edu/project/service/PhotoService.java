package edu.project.service;
import java.util.List;
import edu.project.vo.AttachImageVo;
import edu.project.vo.PhotoVo;

public interface PhotoService {
	
	List<PhotoVo> list(PhotoVo photoVo);
	
	PhotoVo selectByPidx(int pidx);
	
	int insert(PhotoVo vo);
	
	int imageEnroll(AttachImageVo vo);
	
	AttachImageVo image(int pidx); 
	
	PhotoVo updateByPidx(int pidx);
	
	int deleteByPidx(int pidx);
	
	int modifyByPidx(PhotoVo vo);
	
}