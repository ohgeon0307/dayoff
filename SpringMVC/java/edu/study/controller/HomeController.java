package edu.study.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import edu.study.service.UserService;
import edu.study.vo.CalVo;
import edu.study.vo.UserVo;

/**
 * Handles requests for the application home page.
 */

//1. 링크를 클릭하게 되면 dispatcherServlet으로 넘김
//2. dispatcherServlet은 Controller 어노테이션을 찾음
//3. @Controller를 찾으면 RequestMapping Value에 맞는 메소드를 호출함
//4. Value를 리턴하게되고, 리턴값은 dispatcherServlet으로 반환됨.
//5. 반환값을 ViewResolver에게 넘겨줌.
//6. 결과값을 주소창에 뿌려줌.

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate); // ȭ������ �������� Model ��ü�� ����ؾ��ϰ�, DispatcherServlet�� ������ �ֱ⶧����
		// �� �Ű������� �����ؾ��Ѵ�.

		return "home"; // ������� �Է�
	}

	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String sample() {

		return "sample/sample"; // ��������Է�
	}

	@RequestMapping(value = "oper/calc.do", method = RequestMethod.GET)
	public String cal() {

		return "oper/calculator";
	}

	@RequestMapping(value = "oper/calc.do", method = RequestMethod.POST)
	public String cal(CalVo vo,Model model) {
//		System.out.println(vo.toString());
		int result = 0;
		System.out.println(vo.getNum1());
		System.out.println(vo.getNum2());
		System.out.println(vo.getOper());
		
		
		if(vo.getOper() != null && !vo.getOper().equals("")) {
			if(vo.getOper().equals("plus")) {
				result = vo.getNum1()+vo.getNum2();
			} else if (vo.getOper().equals("minus")) {
				result = vo.getNum1()-vo.getNum2();
			} else if (vo.getOper().equals("multi")) {
				result = vo.getNum1()*vo.getNum2();
			} else if (vo.getOper().equals("div")) {
				result = vo.getNum1()/vo.getNum2();
			}	
			model.addAttribute("result",result);
			model.addAttribute("vo",vo);
		} else {
			model.addAttribute("result","��ȿ���� ���� �������Դϴ�.");
		}
		//model -> �����͸� ��Ƽ� ȭ�鿡 �Ѱ��ִ� ����
		//model.addAttribute -> setAttribute
		
		return "oper/result";
	}
	
	@RequestMapping(value="/fileupload.do",method=RequestMethod.GET)
	public String fileupload() {
		return "file/upload";
	}
	
	//File upload 2���� ��� �� ��ƾ���. origin �÷� / real �÷�. �����(���ε� ���ϸ�) : origin / �ٿ�ε�(���� ����� ���ϸ� ����) : real 
	
	@RequestMapping(value="/fileupload.do",method=RequestMethod.POST)
	public String fileupload(MultipartFile uploadF1,HttpServletRequest req, String title) throws IllegalStateException, IOException {
		//Vo�� �ް������ �Ű����� Vo�� �������ָ� �ȴ�.
		System.out.println(title);
		
		//String path = "D:\\��\\Spring\\SpringMVC\\src\\main\\webapp\\resources\\upload";
		
		//�ý��ۿ��� ����ϴ� resources/upload �� ���� ��ΰ� ������� �˾ƿ��� �ҽ��ڵ�.
		String path = req.getSession().getServletContext().getRealPath("/resources/upload");
		
		System.out.println(path);
		
		File dir = new File(path);
		
		if(dir.exists()) { //���丮�� �ִ��� Ȯ���ϴ� ��.
			dir.mkdirs();
		}
		
		if(!uploadF1.getOriginalFilename().isEmpty()) {
			System.out.println(uploadF1.getOriginalFilename()); //���ε��� ���������̸� ��ȯ
			int pos = uploadF1.getOriginalFilename().lastIndexOf("."); //���ڿ��� ������ ���� ������ ���鼭 �ش繮�ڿ��� ��ġ�� ã�´�.
			String ext = uploadF1.getOriginalFilename().substring(pos + 1);
			
			//String etc = etcArr[etcArr.length-1]; //Ȯ���� ��������.
			
			Date now = new Date();
			String today = new SimpleDateFormat("yyyyMMddHHmmss").format(now);

			int random = (int) ((Math.random() * 100)+ 1);
			String result = today + random;
			
			uploadF1.transferTo(new File(path,result+"."+ext)); //�� ��ġ���� ���ϸ��� ��������. ��, ���� �ö󰡴� ������ Ȯ���Ǵ� ��.(�̸��� �ϳ� ������ִ°� ����)
		}
		
		return "";
	}
}
	
	
	
	

//	@RequestMapping(value = "board/list.do", method = RequestMethod.GET)
//	public String l() {
//		
//		
//		return "board/l";
//	}
//	
//	@RequestMapping(value = "board/view.do", method = RequestMethod.GET)
//	public String v() {
//		
//		
//		return "board/V";
//	}
//	
//	@RequestMapping(value = "board/write.do", method = RequestMethod.GET)
//	public String w() {
//		
//		return "board/W";
//	}


