package edu.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.project.dao.ReplyDao;
import edu.project.dao.tReplyDao;
import edu.project.vo.ReplyVo;
import edu.project.vo.tReplyVo;

@Service
public class tReplyServiceImpl implements tReplyService{

	@Autowired
	private tReplyDao treplyDao;
	
	
	@Override
	public List<tReplyVo> treplyList(int tidx) {
		// TODO Auto-generated method stub
		return treplyDao.treplyList(tidx);
	}


	@Override
	public int tinsertReply(tReplyVo vo) {
		// TODO Auto-generated method stub
		return treplyDao.tinsertReply(vo);
	}


	@Override
	public int tupdateReply(tReplyVo vo) {
		// TODO Auto-generated method stub
		return treplyDao.tupdateReply(vo);
	}


	@Override
	public int tdeleteReply(int tridx) {
		// TODO Auto-generated method stub
		return treplyDao.tdeleteReply(tridx);
	}

}
