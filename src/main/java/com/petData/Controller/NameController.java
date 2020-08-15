package com.petData.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.petData.Service.Letter;

@Controller
public class NameController {
	
	@Autowired
	private Letter letter;
	
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
	
	
	
	@RequestMapping("/generator") 
	public ModelAndView generator(ModelAndView mv) {
		mv.setViewName("generator");
		
		
		return mv;
	}
}
