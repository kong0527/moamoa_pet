package com.petData.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.AccessLevel;
import lombok.Builder;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Entity
public class Overseas{
	@Id
	@Column(nullable = false, name="petName")
	private String petName;
	
	@Column(nullable = false, name="population")
	private int population;
	
	@Column(nullable = false, name="rank")
	private int rank;

	@Builder
	public Overseas(String petName, int population, int rank) {
		super();
		this.petName = petName;
		this.population = population;
		this.rank = rank;
	}
}
