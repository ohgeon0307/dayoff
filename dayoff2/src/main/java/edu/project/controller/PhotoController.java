package edu.project.controller;


import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import edu.project.service.PhotoService;
import edu.project.vo.PhotoVo;
import edu.project.controller.PhotoController;
import edu.project.vo.AttachImageVo;
import net.coobird.thumbnailator.Thumbnails;


@RequestMapping(value = "/photo")
@Controller
public class PhotoController {
	
	private static final Logger logger = LoggerFactory.getLogger(PhotoController.class);
	
	@Autowired
	private PhotoService photoService;

	@RequestMapping(value = "/list.do")
	public String list(Model model, PhotoVo vo2, AttachImageVo vo) {
		List<PhotoVo> list2 = photoService.list(vo2);
		model.addAttribute("datalist",list2);

		List<AttachImageVo> list = photoService.imageList(vo);
		model.addAttribute("imagelist",list);

		return "photo/photo_list";
	}
	
	
	@RequestMapping(value = "/write.do", method = RequestMethod.GET )
	public String write() {
		
		return "photo/photo_write";
	}
	
	@RequestMapping(value = "/write.do", method = RequestMethod.POST , produces = MediaType.APPLICATION_JSON_VALUE)
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
			
			File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);	
			
			BufferedImage bo_image = ImageIO.read(saveFile);
				//비율
				double ratio = 3;
				//넓이 높이
				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);					
			
			
			Thumbnails.of(saveFile)
	        .size(width, height)
	        .toFile(thumbnailFile);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		photoService.insert(vo2);
		photoService.imageEnroll(vo);
		System.out.println(vo.toString());
		System.out.println(vo2.toString());
//		int result = photoService.imageEnroll(vo);
//		ResponseEntity<AttachImageVo> result = new ResponseEntity<>(result, HttpStatus.OK);
//		return new ResponseEntity<>(result, HttpStatus.OK);
		return "redirect:list.do";
	}
	
	
	
	
	@RequestMapping(value="/display",method=RequestMethod.GET)
	public ResponseEntity<byte[]> getImage(String fileName) {
		
		
		File file = new File("\\\\DESKTOP-3RHRVJD\\upload\\" + fileName);
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	
	/* 이미지 파일 삭제 */
	@RequestMapping(value="/deleteFile",method=RequestMethod.POST)
	public ResponseEntity<String> deleteFile(String fileName){
		
		logger.info("deleteFile........" + fileName);
		
		File file = null;
		try {
			/* 썸네일 파일 삭제 */
			file = new File("\\\\DESKTOP-3RHRVJD\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			
			logger.info("originFileName : " + originFileName);
			
			file = new File(originFileName);
			
			file.delete();
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
			
		}
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	
	
	
	
	
}
