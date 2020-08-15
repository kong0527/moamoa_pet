package com.petData.Dto;

import com.petData.Entity.Domestic;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class DomesticDto {
	private String petName;
	private int population;

	public Domestic toEntity(){
		Domestic domesticEntity = Domestic.builder()
				.petName(petName)
				.population(population)
				.build();
		return domesticEntity;
	}

	@Builder
	public DomesticDto(String petName, int population) {
		super();
		this.petName = petName;
		this.population = population;
	}
}
