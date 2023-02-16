package edu.project.controller;



import java.io.File;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import edu.project.service.PhotoService;
import edu.project.vo.PhotoVo;
import edu.project.vo.TogetherVo;
import edu.project.vo.UserVo;
import edu.project.controller.PhotoController;
import edu.project.vo.AttachImageVo;



@RequestMapping(value = "/photo")
@Controller
public class PhotoController {
	
	private static final Logger logger = LoggerFactory.getLogger(PhotoController.class);
	
	@Autowired
	private PhotoService photoService;

	@RequestMapping(value = "/list.do")
	public String list(Model model, PhotoVo vo2, AttachImageVo vo, ArrayList<AttachImageVo> img) {
		
		List<PhotoVo> list2 = photoService.list(vo2);
		model.addAttribute("datalist",list2);
		for( PhotoVo item : list2 )
		{
			int pidx = item.getPidx();
			System.out.println(pidx);
			vo = photoService.image(pidx);
			img.add(vo);
			
		}
		for ( AttachImageVo itm : img )
		{
			System.out.println(itm.toString());
		}
		model.addAttribute("image",img);
	
		return "photo/photo_list";
	}
	 
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET )
	public String write() {
		
		return "photo/photo_write";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST )
	public String fileupload(MultipartFile uploadFile, AttachImageVo vo, PhotoVo vo2) {
		
		String uploadFolder = "\\\\502-1\\upload";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);
		File uploadPath = new File(uploadFolder, datePath);
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		logger.info("파일 이름 : " + uploadFile.getOriginalFilename());
		logger.info("파일 타입 : " + uploadFile.getContentType());
		logger.info("파일 크기 : " + uploadFile.getSize());
		/* 파일 이름 */
		String uploadFileName = uploadFile.getOriginalFilename();			
		vo.setFileName(uploadFileName);
		vo.setUploadPath(datePath);
		/* uuid 적용 파일 이름 */
		String uuid = UUID.randomUUID().toString();
		vo.setUuid(uuid);
		uploadFileName = uuid + "_" + uploadFileName;
		/* 파일 위치, 파일 이름을 합친 File 객체 */
		File saveFile = new File(uploadPath, uploadFileName);
		/* 파일 저장 */
		try {
			uploadFile.transferTo(saveFile);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(vo2.toString());
		photoService.insert(vo2);
		System.out.println("pidx : " + vo2.getPidx());
		vo.setPidx(vo2.getPidx());
		
		System.out.println(vo.toString());
		photoService.imageEnroll(vo);
		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/modify.do", method = RequestMethod.GET)
	public String modify(int pidx, Model model) {
		System.out.println("modify.do / pidx : " + pidx);
		
		PhotoVo vo2 = photoService.selectByPidx(pidx);
		System.out.println("modify.do / vo2 : " + vo2.toString());
		model.addAttribute("vo2", vo2);
		
		AttachImageVo image = photoService.image(pidx);
		System.out.println("modify.do / image : " + image.toString());
		model.addAttribute("image", image);
		
		return "photo/photo_modify";
	}
	
	@RequestMapping(value = "modify.do", method = RequestMethod.POST)
	public String modify(MultipartFile uploadFile, AttachImageVo vo, PhotoVo vo2) {
		System.out.println("modify.do =====================================================================");
//		System.out.println("modify.do / vo : " + vo);
		System.out.println("modify.do / vo2 : " + vo2);
//		System.out.println("uploadFile.isEmpty() : " + uploadFile.isEmpty());
		System.out.println("modify.do =====================================================================");
		
		if( !uploadFile.isEmpty() ) //파일이 비어있지않으면 아래구문실행
		{
			System.out.println("modify.do file is not null =====================================================");
			
			String uploadFolder = "\\\\502-1\\upload";
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String str = sdf.format(date);
			String datePath = str.replace("-", File.separator);
			File uploadPath = new File(uploadFolder, datePath);
			if(uploadPath.exists() == false) { uploadPath.mkdirs(); }
			logger.info("파일 이름 : " + uploadFile.getOriginalFilename());
			logger.info("파일 타입 : " + uploadFile.getContentType());
			logger.info("파일 크기 : " + uploadFile.getSize());
			/* 파일 이름 */
			String uploadFileName = uploadFile.getOriginalFilename();			
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);
			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
			uploadFileName = uuid + "_" + uploadFileName;
			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);
			/* 파일 저장 */
			try {
				uploadFile.transferTo(saveFile);		
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		int result = photoService.modifyByPidx(vo2);
		
		if( vo.getFileName() != null ) //파일 이름이 없으면 아래실행? 
		{
			int result2 = photoService.modifyImgByPidx(vo);
			System.out.println(result2 + " < --- result2 값!");
			System.out.println(result + " < --- result 값!");
		}
		return "redirect:/photo/list.do";

	}
	
	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public String delete(int pidx) {
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ"+pidx);
		
		int result2 = photoService.deleteImgByPidx(pidx);
		int result = photoService.deleteByPidx(pidx);

		
		
		if(result2 > 0 && result > 0) {
			
			return "redirect:list.do";
		} else {
			
			return "redirect:/list.do";
		}
	}
	
}


