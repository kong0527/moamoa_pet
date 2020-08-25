package com.petData.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;



@Controller
public class GameController {
	@RequestMapping("/game") 
	public ModelAndView generator(ModelAndView mv) {

		mv.setViewName("game");
		return mv;
	}
}
