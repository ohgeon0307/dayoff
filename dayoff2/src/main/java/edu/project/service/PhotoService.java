package edu.project.service;
import java.util.List;
import edu.project.vo.AttachImageVo;
import edu.project.vo.PhotoVo;
import edu.project.vo.SearchCriteria;

public interface PhotoService {
	
	List<PhotoVo> list(SearchCriteria scri);
	
	PhotoVo selectByPidx(int pidx);
	
	int insert(PhotoVo vo);
	
	int imageEnroll(AttachImageVo vo);
	
	AttachImageVo image(int pidx); 
	
	int modifyByPidx(PhotoVo vo);
	
	int modifyImgByPidx(AttachImageVo vo);
	
	int deleteImgByPidx(int pidx);
	
	int deleteByPidx(int pidx);
	
	int listCount(SearchCriteria scri);
	
	int updatereviewcnt(int pidx);
}