package com.petData.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.petData.Entity.Domestic;

@Repository
public interface PetRepository extends JpaRepository<Domestic, String>{
	List<Domestic> findAll();
	List<Domestic> findByPetNameContaining(String keyword);
}
