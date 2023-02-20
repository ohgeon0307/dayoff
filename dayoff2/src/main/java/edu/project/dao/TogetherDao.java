package edu.project.dao;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
<<<<<<< HEAD

import edu.project.vo.SearchCriteria;
=======
>>>>>>> branch 'master' of https://github.com/ohgeon0307/dayoff.git
import edu.project.vo.TogetherVo;
@Repository
public class TogetherDao {
	
	@Autowired
	private SqlSession sqlSession;
<<<<<<< HEAD

	public List<TogetherVo> list(SearchCriteria scri){
=======
	public List<TogetherVo> list(){
>>>>>>> branch 'master' of https://github.com/ohgeon0307/dayoff.git
		
		
	
		
		return sqlSession.selectList("edu.project.mapper.togetherMapper.togetherlist", scri);
	}
	
	public int insert(TogetherVo vo) {
			
			
			return sqlSession.insert("edu.project.mapper.togetherMapper.togetherInsert", vo);
		}	
	
	
	public TogetherVo selectByTidx(int tidx) {
		
		
		return sqlSession.selectOne("edu.project.mapper.togetherMapper.selectByTidx", tidx);
	}
	
	public int updateByTidx(TogetherVo vo) {
		
		
		return sqlSession.update("edu.project.mapper.togetherMapper.updateByTidx", vo);
	}
	
	public int deleteByTidx(int tidx) {
		
		
		return sqlSession.delete("edu.project.mapper.togetherMapper.deleteByTidx", tidx);
	}
	
	public int updatereviewcnt(int tidx) {
		
		return sqlSession.update("edu.project.mapper.togetherMapper.updatereviewcnt", tidx);
	}
	
	
}