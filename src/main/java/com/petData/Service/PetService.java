package com.petData.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.petData.Domain.PetRepository;
import com.petData.Dto.DomesticDto;
import com.petData.Entity.Domestic;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class PetService {
	@Autowired
	private PetRepository petRepo;
	private static final int BLOCK_PAGE_NUM_COUNT = 10; 
	private static final int PAGE_POST_COUNT = 20;  

	@Transactional
	public List<DomesticDto> getBoardList(int pageNum) {
		Page<Domestic> page = petRepo.findAll(PageRequest.of(pageNum - 1, PAGE_POST_COUNT, Sort.by(Sort.Direction.DESC, "population")));

		List<Domestic> domesticEntities = page.getContent();
		List<DomesticDto> domesticDtoList = new ArrayList<>();

		for (Domestic domestic : domesticEntities) {
			domesticDtoList.add(this.convertEntityToDto(domestic));
		}

		return domesticDtoList;

	}

	@Transactional
	public Long getBoardCount() {
		return petRepo.count();
	}

	public Integer[] getPageList(int curPageNum) {
		Integer[] pageList = new Integer[BLOCK_PAGE_NUM_COUNT];

		// 총 게시글 수
		Double postsTotalCount = Double.valueOf(this.getBoardCount());

		// 총 게시글 기준으로 계산한 마지막 페이지 번호 계산 (올림으로 계산)
		Integer totalLastPageNum = (int)(Math.ceil((postsTotalCount / PAGE_POST_COUNT)));

		// 현재 페이지를 기준으로 블럭의 마지막 페이지 번호 계산
		Integer blockLastPageNum = (totalLastPageNum > curPageNum + BLOCK_PAGE_NUM_COUNT)
				? curPageNum + BLOCK_PAGE_NUM_COUNT
						: totalLastPageNum;

		// 페이지 시작 번호 조정
		curPageNum = (curPageNum <= 3) ? 1 : curPageNum - 2;

		// 페이지 번호 할당
		for (int val = curPageNum, idx = 0; val < blockLastPageNum; val++, idx++) {
			pageList[idx] = val;
		}

		return pageList;
	}

	private DomesticDto convertEntityToDto(Domestic domestic) {
		return DomesticDto.builder()
				.petName(domestic.getPetName())
				.population(domestic.getPopulation())
				.build();
	}
	
//	public List<Domestic> findAll() { 
//		List<Domestic> pets = petRepo.findAll();
//		return pets; 
//	}
}
