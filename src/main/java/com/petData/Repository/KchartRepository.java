package com.petData.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.petData.Entity.Domestic;

@Repository
public interface KchartRepository extends JpaRepository<Domestic, String>{
	List<Domestic> findAll();
	List<Domestic> findByPetNameContaining(String keyword);
	Domestic findByPetName(String keyword);
}
