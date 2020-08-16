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
import com.petData.Entity.Overseas;
import com.petData.Service.ChartService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class ChartController {
	@Autowired 
	ChartService chartService;
	
	@GetMapping("/")
    public RedirectView home(ModelAndView mv) {
		return new RedirectView("/kChart");
    }

	@GetMapping("/kChart")
    public ModelAndView kChart(ModelAndView mv, @PageableDefault Pageable pageable) {
		Page<Domestic> kChart = chartService.getKBoardList(pageable);
		mv.addObject("pets", kChart.getContent());
        mv.addObject("petList", kChart);
		mv.setViewName("kChart");
		return mv;
    }
	
	@GetMapping("/eChart")
    public ModelAndView eChart(ModelAndView mv, @PageableDefault Pageable pageable) {
		Page<Overseas> eChart = chartService.getEBoardList(pageable);
		mv.addObject("pets", eChart.getContent());
        mv.addObject("petList", eChart);
		mv.setViewName("eChart");
		return mv;
    }
}
