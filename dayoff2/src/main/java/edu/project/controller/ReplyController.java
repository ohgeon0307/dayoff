package edu.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.project.service.ReplyService;
import edu.project.vo.ReplyVo;

@Controller
@RequestMapping("/board/view/reply")
public class ReplyController {
 
    @Autowired
    ReplyService replyService;
    
    @ResponseBody
    @RequestMapping("/list") //댓글 리스트
    public List<ReplyVo> list(Model model, int bidx) throws Exception{
        
        return replyService.replyList(bidx);
    }
    
     
    @ResponseBody
    @RequestMapping("/insert") //댓글 작성
    private int insertReply(@RequestParam int bidx, @RequestParam String rContent) throws Exception{
        
        ReplyVo vo = new ReplyVo();
        System.out.println("########"+ vo.toString());
        vo.setBidx(bidx);
        vo.setrContent(rContent);
        //로그인 기능을 구현했거나 따로 댓글 작성자를 입력받는 폼이 있다면 입력 받아온 값으로 사용하면 됩니다. 저는 따로 폼을 구현하지 않았기때문에 임시로 "test"라는 값을 입력해놨습니다.
     
        
        return replyService.insertReply(vo);
    }
    
    @RequestMapping("/update") //댓글 수정  
    @ResponseBody
    private int udpateReply(@RequestParam int ridx, @RequestParam String rContent) throws Exception{
        
        ReplyVo vo = new ReplyVo();
        vo.setRidx(ridx);
        vo.setrContent(rContent);
        
        return replyService.updateReply(vo);
    }
    
    @RequestMapping("/delete/{ridx}") //댓글 삭제  
    @ResponseBody
    private int deleteReply(@PathVariable int ridx) throws Exception{
        
        return replyService.deleteReply(ridx);
    }
    
}

