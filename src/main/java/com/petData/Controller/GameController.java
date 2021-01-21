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
//		JPA를 통해 이름 리스트 가지고 오기
		List<Name> nameList = gameService.gameName(type);
//		2020.10.19 -> 쿼리 수정 후 shuffle이 필요 없음
//		랜덤으로 섞기
//		Collections.shuffle(nameList);
//		20개만큼 리스트 자르기 -> 랜덤 후에 하는 이유는 그렇지 않으면 순서대로 나오기 때문
		nameList = nameList.subList(0, 20);
		return nameList;
	}
}
