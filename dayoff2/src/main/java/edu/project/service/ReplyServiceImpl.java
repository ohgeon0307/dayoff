package edu.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.project.dao.ReplyDao;
import edu.project.vo.ReplyVo;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	private ReplyDao replyDao;
	
	
	@Override
	public List<ReplyVo> replyList(int bidx) {
		// TODO Auto-generated method stub
		return replyDao.replyList(bidx);
	}


	@Override
	public int insertReply(ReplyVo vo) {
		// TODO Auto-generated method stub
		return replyDao.insertReply(vo);
	}


	@Override
	public int updateReply(ReplyVo vo) {
		// TODO Auto-generated method stub
		return replyDao.updateReply(vo);
	}


	@Override
	public int deleteReply(int ridx) {
		// TODO Auto-generated method stub
		return replyDao.deleteReply(ridx);
	}

}
