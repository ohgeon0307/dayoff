package edu.project.service;

import java.util.List;

import edu.project.vo.ReplyVo;

public interface ReplyService {

	List<ReplyVo> replyList(int bidx);
	
	int insertReply(ReplyVo vo);
	
	int updateReply(ReplyVo vo);
	
	int deleteReply(int bidx);
}
