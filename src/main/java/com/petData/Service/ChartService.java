package com.petData.Service;

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
        pageable = PageRequest.of(page, 20, Sort.by(Sort.Direction.DESC, "population"));

        return kChartRepo.findAll(pageable);
    }
	
	public Page<Overseas> getEBoardList(Pageable pageable) {
        int page = (pageable.getPageNumber() == 0) ? 0 : (pageable.getPageNumber() - 1);
        pageable = PageRequest.of(page, 20, Sort.by(Sort.Direction.DESC, "population"));

        return eChartRepo.findAll(pageable);
    }
}
