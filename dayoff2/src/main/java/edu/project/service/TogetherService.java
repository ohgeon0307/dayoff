package edu.project.service;
import java.util.List;
<<<<<<< HEAD

import edu.project.vo.SearchCriteria;
=======
>>>>>>> branch 'master' of https://github.com/ohgeon0307/dayoff.git
import edu.project.vo.TogetherVo;
public interface TogetherService {
	
	int insert(TogetherVo vo);
	List<TogetherVo> list(SearchCriteria scri);
	
	TogetherVo selectByTidx(int Tidx);
	
	int updateByTidx(TogetherVo vo);
	
	int deleteByTidx(int tidx);
<<<<<<< HEAD
	
	int updatereviewcnt(int tidx);
}
=======
}
>>>>>>> branch 'master' of https://github.com/ohgeon0307/dayoff.git
