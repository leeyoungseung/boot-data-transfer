package com.web.transfer;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.transfer.dto.MainPageExListDTO;

@Controller
@SpringBootApplication
public class BootDataTransferApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootDataTransferApplication.class, args);
	}
	
//	@RequestMapping(value="/")
//	@ResponseBody
//	public String home() {
//		
//		return "helloWorld";
//	}
	
	@RequestMapping(value="/")
	public String home(HttpServletRequest req) {
		HttpSession ss = req.getSession();
		
		
		List<MainPageExListDTO> exList = new ArrayList<MainPageExListDTO>();
		exList.add(new MainPageExListDTO("파라미터예제","paramData","리퀘스트 파라미터를 다루는 예제"));
		exList.add(new MainPageExListDTO("Path 파라미터예제","pathParamData","Path 파라미터를 다루는 예제"));
		exList.add(new MainPageExListDTO("Form 데이터 예제","formData","Form 데이터를 다루는 예제"));
		exList.add(new MainPageExListDTO("List 데이터 예제","listData","리스트 데이터를 프론트에서 보내는 것을 다루는 예제"));
		//exList.add(new MainPageExListDTO("Multi Form 데이터 예제","multiFormData","멀티폼 데이터를 프론트에서 보내는 것을 다루는 예제"));
		exList.add(new MainPageExListDTO("File 데이터 예제","fileData","파일 데이터를 프론트에서 보내는 것을 다루는 예제"));
		ss.setAttribute("exList", exList);
		
		return "index";
	}

}
