package edu.project.controller;



import java.io.File;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;



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
import edu.project.controller.PhotoController;
import edu.project.vo.AttachImageVo;



@RequestMapping(value = "/photo")
@Controller
public class PhotoController {
	
	private static final Logger logger = LoggerFactory.getLogger(PhotoController.class);
	
	@Autowired
	private PhotoService photoService;

	@RequestMapping(value = "/list.do")
	public String list(Model model, PhotoVo vo2, AttachImageVo vo, ArrayList<AttachImageVo> list) {
		List<PhotoVo> list2 = photoService.list(vo2);
		model.addAttribute("datalist",list2);
		for( PhotoVo item : list2 )
		{
			int pidx = item.getPidx();
			System.out.println(pidx);
			vo = photoService.imageList(pidx);
			list.add(vo);
		}
		
		for ( AttachImageVo itm : list )
		{
			System.out.println(itm.toString());
		}
		
		model.addAttribute("imagelist",list);

		return "photo/photo_list";
	}
	 
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET )
	public String write() {
		
		return "photo/photo_write";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST )
	public String fileupload(MultipartFile uploadFile, AttachImageVo vo, PhotoVo vo2) {
		
/*		logger.info("write.do");
		
		File checkfile = new File(uploadFile.getOriginalFilename());
		String type = null;
		
		try {
			type = Files.probeContentType(checkfile.toPath());
			logger.info("MIME TYPE : " + type);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		if(!type.startsWith("image")) {
			
//			AttachImageVo result = null;
//			return new ResponseEntity<>(result, HttpStatus.BAD_REQUEST);
			return 0 ;
		}*/
		
		
		String uploadFolder = "\\\\DESKTOP-3RHRVJD\\upload";
		
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
		
		/* 이미저 정보 담는 객체 */
//		AttachImageVo result = new AttachImageVo();
		
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
//		int result = photoService.imageEnroll(vo);
//		ResponseEntity<AttachImageVo> result = new ResponseEntity<>(result, HttpStatus.OK);
//		return new ResponseEntity<>(result, HttpStatus.OK);
		return "redirect:list.do";
	}
	
	
	
}
