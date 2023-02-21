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
import edu.project.service.tReplyService;
import edu.project.vo.ReplyVo;
import edu.project.vo.tReplyVo;

@Controller
@RequestMapping("/together/view/reply")
public class tReplyController {
 
    @Autowired
    tReplyService treplyService;
    
    @ResponseBody
    @RequestMapping("/list") //댓글 리스트
    public List<tReplyVo> list(Model model, int tidx) throws Exception{
        
        return treplyService.treplyList(tidx);
    }
    
     
    @ResponseBody
    @RequestMapping("/insert") //댓글 작성
    private int tinsertReply(@RequestParam int tidx, @RequestParam String trContent, @RequestParam String twriter, @RequestParam int uidx) throws Exception{
        System.out.println("call");
        tReplyVo vo = new tReplyVo();
        System.out.println("########"+ vo.toString());
        vo.setTidx(tidx);
        vo.setUidx(uidx);
        vo.setTrContent(trContent);
        vo.settWriter(twriter);
        
        //로그인 기능을 구현했거나 따로 댓글 작성자를 입력받는 폼이 있다면 입력 받아온 값으로 사용하면 됩니다. 저는 따로 폼을 구현하지 않았기때문에 임시로 "test"라는 값을 입력해놨습니다.
     
        
        return treplyService.tinsertReply(vo);
    }
    
    @RequestMapping("/update") //댓글 수정  
    @ResponseBody
    private int tupdateReply(@RequestParam int tridx, @RequestParam String trContent) throws Exception{
        
        tReplyVo vo = new tReplyVo();
        vo.setTridx(tridx);
        vo.setTrContent(trContent);
        
        return treplyService.tupdateReply(vo);
    }
    
    @RequestMapping("/delete{tridx}") //댓글 삭제  
    @ResponseBody
    private int tdeleteReply(@PathVariable int tridx) throws Exception{
        
        return treplyService.tdeleteReply(tridx);
    }
    
}

