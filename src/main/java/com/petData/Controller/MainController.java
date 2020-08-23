package com.petData.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
//	@RequestMapping("/") 
//	public String index() { 
//		return "index"; 
//	}
	
	/*@RequestMapping("/generator") 
		public String generator() {
			return "generator";
		}*/
	
	//임시
	@RequestMapping("/game")
	public String game() {
		return "game";
	}
}
