package com.petData.Controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
		mv.setViewName("game");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/getList") 
	public List<Name> sendList(String type) {
		List<Name> nameList = gameService.gameName(type);
		Collections.shuffle(nameList);
		nameList = nameList.subList(0, 20);
		for (int i = 0; i < nameList.size(); i++) {
			System.out.println(nameList.get(i).getPetName());
		}
		return nameList;
	}
}
