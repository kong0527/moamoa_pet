package com.petData.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.petData.Dto.DomesticDto;
import com.petData.Service.PetService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class ChartController {
	@Autowired 
	PetService petService;

	@GetMapping("/")
    public ModelAndView list(ModelAndView mv, Pageable pageable, 
    		@RequestParam(value= "page", defaultValue="1") int pageNum,
    		@RequestParam(value= "size", defaultValue="20") int size) {
		List<DomesticDto> petList = petService.getBoardList(pageNum);
		System.out.println(petList.get(0).getPetName());
		Integer[] pageList = petService.getPageList(pageNum);
		mv.addObject("petList", petList);
		mv.addObject("pageList", pageList);
		mv.setViewName("index");
		return mv;
    }
}
