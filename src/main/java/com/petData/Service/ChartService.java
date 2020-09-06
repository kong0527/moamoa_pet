package com.petData.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.petData.Entity.Domestic;
import com.petData.Entity.Overseas;
import com.petData.Repository.EchartRepository;
import com.petData.Repository.KchartRepository;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class ChartService {
	@Autowired
	private KchartRepository kChartRepo;
	
	@Autowired
	private EchartRepository eChartRepo;

	public Page<Domestic> getKBoardList(Pageable pageable) {
        int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1);
        pageable = PageRequest.of(page, 20, Sort.by("population").descending().and(Sort.by("petName")));

        return kChartRepo.findAll(pageable);
    }
	
	public Page<Overseas> getEBoardList(Pageable pageable) {
        int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1);
        pageable = PageRequest.of(page, 20, Sort.by("population").descending().and(Sort.by("petName")));

        return eChartRepo.findAll(pageable);
    }
	
	public Domestic searchKchart(String keyword) {
		Domestic result = kChartRepo.findByPetName(keyword);
		return result;
	}
	
	public List<Domestic> recomKchart(String keyword) {
		List<Domestic> recommend = kChartRepo.findByPetNameContaining(keyword);
		return recommend;
	}
	
	public Overseas searchEchart(String keyword) {
		Overseas result = eChartRepo.findByPetName(keyword);
		return result;
	}
	
	public List<Overseas> recomEchart(String keyword) {
		List<Overseas> recommend = eChartRepo.findByPetNameContaining(keyword);
		return recommend;
	}
}
