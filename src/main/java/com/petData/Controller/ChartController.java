package com.petData.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.petData.Entity.Domestic;
import com.petData.Service.PetService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class ChartController {
	@Autowired 
	PetService petService;
	
	@GetMapping("/")
    public RedirectView home(ModelAndView mv) {
		return new RedirectView("/chart");
    }

	@GetMapping("/chart")
    public ModelAndView list(ModelAndView mv, @PageableDefault Pageable pageable) {
		Page<Domestic> petList = petService.getBoardList(pageable);
		mv.addObject("pets", petList.getContent());
        mv.addObject("petList", petList);
		mv.setViewName("chart");
		return mv;
    }
}
