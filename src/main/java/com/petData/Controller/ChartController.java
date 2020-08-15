package com.petData.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.petData.Entity.Domestic;
import com.petData.Service.PetService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class ChartController {
	@Autowired 
	PetService petService;

	@GetMapping("/")
    public ModelAndView list(ModelAndView mv) {
		List<Domestic> petList = petService.findAll();
		mv.addObject("petList", petList);
		mv.setViewName("index");
		return mv;
    }
}
