package com.petData.Controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.petData.Domain.Name;
import com.petData.Service.GameService;

@RestController
public class GameController {
	@Autowired 
	GameService gameService;
	
	@RequestMapping("/game") 
	public ModelAndView generator(ModelAndView mv) {
		List<Name> nameList = gameService.gameName();
		Collections.shuffle(nameList);
		mv.addObject("nameList", nameList);
		mv.setViewName("game");
		return mv;
	}
}
