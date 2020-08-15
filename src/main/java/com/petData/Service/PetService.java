package com.petData.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petData.Domain.PetRepository;
import com.petData.Entity.Domestic;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class PetService {
	@Autowired
	private PetRepository petRepo;
	
	public List<Domestic> findAll() { 
		List<Domestic> pets = petRepo.findAll();
		return pets; 
	}
}
