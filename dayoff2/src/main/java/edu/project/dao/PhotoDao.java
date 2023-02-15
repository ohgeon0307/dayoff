package edu.project.dao;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import edu.project.vo.AttachImageVo;
import edu.project.vo.PhotoVo;
@Repository
public class PhotoDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<PhotoVo> list(PhotoVo vo) {
		return sqlSession.selectList("edu.project.mapper.photoMapper.list", vo);
	}
	
	public PhotoVo selectByPidx(int pidx) {
		return sqlSession.selectOne("edu.project.mapper.photoMapper.selectByPidx", pidx);
	}
	
	public int insert(PhotoVo vo) {
		return sqlSession.insert("edu.project.mapper.photoMapper.insert", vo);
	}
	
	public int imageEnroll(AttachImageVo vo) {
		return sqlSession.insert("edu.project.mapper.photoMapper.imageEnroll", vo);
	}
	
	public AttachImageVo image(int pidx) {
		return sqlSession.selectOne("edu.project.mapper.photoMapper.image", pidx);
	}
	
	public int modifyByPidx(PhotoVo vo) {
		return sqlSession.update("edu.project.mapper.photoMapper.modifyByPidx", vo);
	}
	
	public int modifyImgByPidx(AttachImageVo vo) {
		return sqlSession.update("edu.project.mapper.photoMapper.modifyImgByPidx", vo);
	}
	
	public int deleteImgByPidx(int pidx) {
		return sqlSession.delete("edu.project.mapper.photoMapper.deleteImgByPidx", pidx);
	}
	
	public int deleteByPidx(int pidx) {
		return sqlSession.delete("edu.project.mapper.photoMapper.deleteByPidx", pidx);
	}
	
	 
}