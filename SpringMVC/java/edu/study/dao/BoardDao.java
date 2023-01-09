package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.BoardVo;
import edu.study.vo.Criteria;
import edu.study.vo.SearchCriteria;
import edu.study.vo.SearchVo;


@Repository //시스템 내부가 아니라 시스템 외부에 있는 곳에서 데이터 접근을 하는 객체이기 때문에.
public class BoardDao {
	
	@Autowired // SqlSessionFactory 의존자동주입.
	private SqlSession sqlSession;
	
	public List<BoardVo> list(SearchCriteria scri) {
	
		return sqlSession.selectList("edu.study.mapper.boardMapper.list",scri);
	}
	
	public BoardVo selectByBidx(int bidx) {
		
		return sqlSession.selectOne("edu.study.mapper.boardMapper.selectByBidx", bidx);
	}
	
	public BoardVo updateByBidx(int bidx) {
		
		return sqlSession.selectOne("edu.study.mapper.boardMapper.updateByBidx", bidx);
	}
	
	public int modifyByBidx(BoardVo vo) {
		
		return sqlSession.update("edu.study.mapper.boardMapper.modifyByBidx", vo);
	}

	public int deleteByBidx(int bidx) {
		
		return sqlSession.delete("edu.study.mapper.boardMapper.deleteByBidx", bidx);
	}
	
	public int deleteFromReply(int bidx) {
		
		return sqlSession.delete("edu.study.mapper.boardMapper.deleteFromReply",bidx);
	}

	public int insertByUidx(BoardVo vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("edu.study.mapper.boardMapper.insertByUidx", vo);
	}
	
	public int maxBidx() {
		return sqlSession.selectOne("edu.study.mapper.boardMapper.maxBidx");
	}
	
	public int countBoard() {
		return sqlSession.selectOne("edu.study.mapper.boardMapper.countBoard");
	}
	
	public List<BoardVo> listPage(SearchCriteria scri) {
		return sqlSession.selectList("edu.study.mapper.boardMapper.listPage",scri);
	}
	
	public int listCount() {
		return sqlSession.selectOne("edu.study.mapper.boardMapper.listCount");
	
	}
}
