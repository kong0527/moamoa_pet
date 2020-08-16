package com.petData.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.petData.Entity.Name;
import com.petData.Service.Letter;
import com.petData.Service.NameService;

@Controller
public class NameController {
	
	@Autowired
	private Letter letter;
	
	@Autowired
	private NameService service;
	
	@ModelAttribute("options")
	public NameCommand formBacking(HttpServletRequest request) throws Exception {
		return new NameCommand();
	}
	
	@ModelAttribute("eLetters")
	public List<Letter> referencData1() {
		List<Letter> eLetters = new ArrayList<Letter>();
		eLetters = letter.generateE();

		return eLetters;
	}
	
	@ModelAttribute("kLetters")
	public List<Letter> referencData2() {
		List<Letter> kLetters = new ArrayList<Letter>();
		kLetters = letter.generateK();


		return kLetters;
	}
	
	
	
	@RequestMapping(value = "/generator", method = { RequestMethod.GET, RequestMethod.POST }) 
	public ModelAndView generator(ModelAndView mv, HttpServletRequest request, @ModelAttribute("options") NameCommand command) {
		//POST방식인 경우(필터링 사용했을 때)
		if (request.getMethod().equals("POST")) {
			List<Name> generatedNames = service.getGeneratedName(command);
			mv.addObject("generatedNames", generatedNames);
		}
		
		mv.setViewName("generator");
		return mv;
	}
}
