package edu.project.service;

import java.util.List;

import edu.project.vo.ReplyVo;
import edu.project.vo.tReplyVo;

public interface tReplyService {

	List<tReplyVo> treplyList(int tidx);
	
	int tinsertReply(tReplyVo vo);
	
	int tupdateReply(tReplyVo vo);
	
	int tdeleteReply(int tridx);
}
